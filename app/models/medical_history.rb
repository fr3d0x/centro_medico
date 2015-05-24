class MedicalHistory < ActiveRecord::Base
	belongs_to :patient

	validates :ocupacion, presence: {message: "Debe indicar la ocupacion para el historial medico"}
	validates :antecedentes_lesiones, presence: {message: "Debe indicar si el paciente ha tenido lesiones para el historial medico"}
	validates :antecedentes_familiares, presence: {message: "Debe indicar los antecedentes familiares para el historial medico"}
	validates :condicion_medica_actual, presence: {message: "Debe indicar ll condicion medica actual para el historial medico"}
	validates :cirugias, presence: {message: "Debe indicar si el paciente ha tenido cirugias o no para el historial medico"}
	validates :peso, :altura, presence: {message: "Debe indicar el peso y la altura para el historial medico"}
	validates :alergias, presence: {message: "Debe indicar si el paciente posee alergias y cuales son para el historial"}
end
