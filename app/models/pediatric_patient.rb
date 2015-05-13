class PediatricPatient < ActiveRecord::Base
	has_one :pediatric_history, :dependent => :destroy
	has_many :pediatric_appointments, :dependent => :destroy
	accepts_nested_attributes_for :pediatric_history
	has_many :doctors, :through => :pediatric_appointments

	private

	def self.ya_mayor(record)
		hist_pediatrico = PediatricHistory.find_by!(pediatric_patient_id: record)
		nuevo_paciente = Patient.create(nombre: record.nombre, apellido: record.apellido, fecha_nacimiento: record.fecha_nacimiento, fecha_ingreso: record.fecha_ingreso)
		hist_pediatrico.pediatric_patient_id = nil
		hist_pediatrico.update_attribute(:patient_id, nuevo_paciente.id)
		record.destroy
		return nuevo_paciente
	end

	def self.search(search)
		hist_med = PediatricHistory.find_by!("ced_madre = ? OR ced_padre = ?", "%#{search}%", "%#{search}%")
		paciente = hist_med.pediatric_patient
		return paciente
	end
	def self.existente(string)
		historia = PediatricHistory.find_by("ced_madre = ? OR ced_padre = ?", string, string)
		if historia.blank?
			return nil
		else
			paciente = find_by(id: historia.pediatric_patient_id)
			return paciente
		end
	end
end
