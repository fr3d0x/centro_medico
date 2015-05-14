class GrowthControl < ActiveRecord::Base
	belongs_to :pediatric_control

	validates :fecha, presence: {message: "fecha de control de crecimiento debe estar presente para crear la cita"}
	validates :edad, presence: {message: "edad de control de crecimiento debe estar presente para crear la cita"}
	validates :peso, presence: {message: "peso de control de crecimiento debe estar presente para crear la cita"}
	validates :talla, presence: {message: "talla de control de crecimiento debe estar presente para crear la cita"}

end
