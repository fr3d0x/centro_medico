class PediatricPatient < ActiveRecord::Base
	has_one :pediatric_history, :dependent => :destroy
	accepts_nested_attributes_for :pediatric_history

	private

	def self.ya_mayor(record)
		hist_pediatrico = PediatricHistory.find_by!(pediatric_patient_id: record)
		nuevo_paciente = Patient.create(nombre: record.nombre, apellido: record.apellido, fecha_nacimiento: record.fecha_nacimiento, fecha_ingreso: record.fecha_ingreso)
		hist_pediatrico.pediatric_patient_id = nil
		hist_pediatrico.update_attribute(:patient_id, nuevo_paciente.id)
		record.destroy
		return nuevo_paciente
	end
end
