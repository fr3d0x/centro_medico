class AppointmentsPdf < Prawn::Document
	def initialize(appointments)
		super(top_margin: 30, :page_layout => :landscape)
		@appointments = appointments

		if @appointments.blank?
			text "No hay citas pautadas", :align => :center, :style => :bold, :size => 17, :color => '#086A87'
		else
			bounding_box([-30,565], :width => bounds.right/2) do
				image ::Rails.root.join('public','images','Logo_ADS.jpg'), :scale => 0.25
			end
			bounding_box([0,555], :width => bounds.right) do
				text "Asociacion Damas Salesianas (ADS)", :align => :center, :style => :bold, :size => 17, :color => '#086A87'
				text "Centro Médico: María Auxiliadora", :size => 13, :align => :center, :color => '#086A87'
				text "Telefonos: (0212)2371391/9787405", :size => 13, :align => :center, :color => '#086A87'
				text "Email: mariaauxiliadora7@cantv.net", :size => 13, :align => :center, :color => '#086A87'
			end
			bounding_box([680,565], :width => bounds.left/2) do
				image ::Rails.root.join('public','images','Virgen.png'), :scale => 0.32
			end
			move_down(45)

			text "Citas del dia #{@appointments.first.fecha.to_s}", :size => 25, :style => :bold, :align => :center
			citas = @appointments.map do |appointment|
				if appointment.estado = true
					@estado = "Activa"
				else
					@estado = "Cancelada"
				end
			  [
			    appointment.fecha.strftime('%d/%m/%y'),
			    appointment.hora.strftime('%I:%M.%P'),
			    appointment.patient.apellido + ' ' + appointment.patient.nombre,
			    appointment.patient.cedula,
			    appointment.patient.telefono,
			    appointment.doctor.nombre + ' ' + appointment.doctor.apellido,
			    appointment.doctor.especialidad,
			    appointment.doctor.telefono1,
			    @estado
			  ]
			end
			table [["Fecha", "Hora", "Paciente", "Cedula", "Telefono del paciente", "Médico", "Especialidad", "Telefono", "Estado de la cita"]] + citas, :column_widths => {0 => 60, 1 => 60, 2 => 85, 3 => 75, 4 => 80, 5 => 80, 6 => 90, 7 => 85, 8 => 90}	do
				row(0).font_size = 7
				row(0).backgrownd_color = "58FAF4"
				self.row_colors = ["DDDDDD", "FFFFFF"]
				self.header = true
			end
		end
	end
end