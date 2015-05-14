class AppointmentReport < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :pediatric_appointment

	validates :diagnostico, :tratamiento, :informe_medico, presence: {message: "Debe estar presente para crear la cita"}
	validates :diagnostico, :tratamiento, :informe_medico, :length => {
    :minimum   => 10,
    :maximum   => 1500,
    :too_short => "debe tener al menos %{count} caracteres",
    :too_long  => "debe tener %{count} caracteres maximo"
  }

end
