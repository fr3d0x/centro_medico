class AppointmentReportPdf < Prawn::Document
	def initialize(appointment_report)
		super(top_margin: 30)
		@appointment_report = appointment_report
		image ::Rails.root.join('public','images','virgen_icono.jpg')
		move_down(25)
		text "Informe medico de la cita", :size => 25, :style => :bold
		text "Medico que prescribe: #{@appointment_report.appointment.doctor.nombre + ' ' + @appointment_report.appointment.doctor.apellido}"
		text "Telefono: #{@appointment_report.appointment.doctor.telefono1}"
		text "Motivo de la cita: #{@appointment_report.appointment.motivo}"
		text "Diagnostico del doctor: #{@appointment_report.diagnostico}"
		text "Tratamiento recomendado: #{@appointment_report.tratamiento}"
		move_down(60)
		text "Firma del doctor"
		text "________________"
	end	
end