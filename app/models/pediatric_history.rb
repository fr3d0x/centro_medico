class PediatricHistory < ActiveRecord::Base
	has_one :pediatric_control, :dependent => :destroy
	belongs_to :pediatric_patient

	validates :genero, presence: {message: "debe indicar el genero para el historial pediatrico"}
	validates :lugar_nacimiento, presence: {message: "debe indicar el lugar de nacimiento para el historial pediatrico"}
	validates :lugar_residencia, presence: {message: "debe indicar el lugar de recidencia para el historial pediatrico"}
	validates :padre, presence: {message: "debe indicar quien es el padre para el historial pediatrico"}
	validates :ced_padre, presence: {message: "debe indicar la cedula del padre para el historial pediatrico"}
	validates :madre, presence: {message: "debe indicar quien es la madre para el historial pediatrico"}
	validates :ced_madre, presence: {message: "debe indicar la cedula de la madre para el historial pediatrico"}
	validates :diagnostico_familiar, presence: {message: "debe indicar el diagnostico familiar para el historial pediatrico"}
	validates :antecedentes_prenatales, presence: {message: "debe indicar los antecedentes prenatales para el historial pediatrico"}
	validates :antecedentes_natales, presence: {message: "debe indicar los antecedentes natales para el historial pediatrico"}
	validates :antecedentes_postnatales, presence: {message: "debe indicar los antecedentes postnatales para el historial pediatrico"}
	validates :sintomas_generales, presence: {message: "debe indicar los sintomas generales postnatales para el historial pediatrico"}
end
