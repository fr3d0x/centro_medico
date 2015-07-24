class PediatricPatient < ActiveRecord::Base
	require 'securerandom'
	has_one :pediatric_history, :dependent => :destroy
	has_many :pediatric_appointments, :dependent => :destroy
	accepts_nested_attributes_for :pediatric_history
	has_many :doctors, :through => :pediatric_appointments

	validates :telefono_padre, presence: {message: "debe indicar el telefono del padre del paciente"}
	validates :telefono_madre, presence: {message: "debe indicar el telefono de la madre del paciente"}
	
	private

	def self.ya_mayor(record)
		hist_pediatrico = PediatricHistory.find_by!(pediatric_patient_id: record.id)
		consultas = PediatricAppointment.where(pediatric_patient_id: record.id)
		nuevo_paciente = Patient.create(nombre: record.nombre, apellido: record.apellido, telefono: "no indicado", fecha_ingreso: record.fecha_ingreso, cedula: SecureRandom.random_number(100000).to_s.rjust(4, '0') + " Por indicar", fecha_nacimiento: record.fecha_nacimiento)
		hist_medica = MedicalHistory.create(ocupacion: "Por indicar", antecedentes_lesiones: "Por Indicar", antecedentes_familiares: "Por Indicar", condicion_medica_actual: "Por indicar", cirugias: "Por Indicar", peso: "Por Indicar", altura: " Por Indicar", alergias: "Por Indicar")
		nuevo_paciente.update_attribute(:num_hist_medica, hist_medica.id.to_s.rjust(4, '0'))
		hist_pediatrico.pediatric_patient_id = nil
		hist_pediatrico.update_attribute(:patient_id, nuevo_paciente.id)
		hist_medica.update_attribute(:patient_id, nuevo_paciente.id)
		consultas.each do |consulta|
			consulta.update_attribute(:patient_id, nuevo_paciente.id)
		end
		record.destroy
		return nuevo_paciente
	end

	def self.search(search)
	  if search
	  	if search == ""
	  	  self.all
	  	else
				ids = PediatricHistory.where("ced_madre like ? OR ced_padre like ?", "%#{search}%", "%#{search}%").pluck(:pediatric_patient_id)
	      where(id: ids).index_by(&:id).values_at(*ids)
	    end
	  else
	    self.all
	  end
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