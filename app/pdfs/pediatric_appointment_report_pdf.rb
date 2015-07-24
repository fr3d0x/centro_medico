class PediatricAppointmentReportPdf < Prawn::Document
	def initialize(pediatric_appointment_report)
		super(top_margin: 30)
		@appointment_report = pediatric_appointment_report

		bounding_box([-25,750], :width => bounds.right/2) do
			image ::Rails.root.join('public','images','Logo_ADS.jpg'), :scale => 0.25
		end
		bounding_box([0,740], :width => bounds.right) do
			text "Asociacion Damas Salesianas (ADS)", :align => :center, :style => :bold, :size => 17, :color => '#086A87'
			text "Centro Médico: María Auxiliadora", :size => 13, :align => :center, :color => '#086A87'
			text "Telefonos: (0212)2371391/9787405", :size => 13, :align => :center, :color => '#086A87'
			text "Email: mariaauxiliadora7@cantv.net", :size => 13, :align => :center, :color => '#086A87'
		end
		bounding_box([500,750], :width => bounds.left/2) do
			image ::Rails.root.join('public','images','Virgen.png'), :scale => 0.32
		end
		move_down(45)
		text "Informe Médico", :size => 25, :style => :bold, :align => :center
		move_down(10)
		text "Medico que prescribe: #{@appointment_report.pediatric_appointment.doctor.nombre + ' ' + @appointment_report.pediatric_appointment.doctor.apellido}", :size => 15, :style => :bold, :align => :center
		move_down(35)
		text "Telefono del doctor: #{@appointment_report.pediatric_appointment.doctor.telefono1}"

		move_down(10)
		text "Paciente: #{@appointment_report.pediatric_appointment.pediatric_patient.nombre + ' ' + @appointment_report.pediatric_appointment.pediatric_patient.apellido}"
		move_down(10)
		text "Motivo de la cita: #{@appointment_report.pediatric_appointment.motivo}"
		move_down(10)
		text "Diagnostico del doctor: #{@appointment_report.diagnostico}"
		move_down(10)
		text "Tratamiento recomendado: #{@appointment_report.tratamiento}"
		move_down(10)
		text "Reposo: #{@appointment_report.reposo}"
		move_down(10)
		text "Examenes Solicitados: #{@appointment_report.examenes_solicitados}"
		move_down(10)
		bounding_box([0,50], :width => bounds.right) do
			text "Firma del doctor", :size => 17, :style => :bold, :align => :center
			move_down(15)
			text "________________________________", :align => :center
		end
	end	
end

		