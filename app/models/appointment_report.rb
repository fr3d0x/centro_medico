class AppointmentReport < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :pediatric_appointment

	validates :diagnostico, :tratamiento, :reposo, :examenes_solicitados, presence: {message: "Debe estar presente para crear la cita, si no son necesarios para el reporte coloque 'no aplica' "}
	validates :diagnostico, :tratamiento, :length => {
    :minimum   => 10,
    :maximum   => 1500,
    :too_short => "debe tener al menos %{count} caracteres",
    :too_long  => "debe tener %{count} caracteres maximo"
  }

end
