pdf.move_down(65)
pdf.text "Informe medico de la cita", :size => 25, :style => :bold
pdf.text "Medico que prescribe: #{@appointment_report.appointment.doctor.nombre + ' ' + @appointment_report.appointment.doctor.apellido}"
pdf.text "Telefono: #{@appointment_report.appointment.doctor.telefono1}"
pdf.text "Motivo de la cita: #{@appointment_report.appointment.motivo}"
pdf.text "Diagnostico del doctor: #{@appointment_report.diagnostico}"
pdf.text "Tratamiento recomendado: #{@appointment_report.tratamiento}"
pdf.move_down(60)
pdf.text "Firma del doctor"
pdf.text "________________"