pdf.move_down(35)
pdf.text "Datos Personales de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
pdf.text "Numero de Historial: #{@patient.num_hist_medica}"
pdf.text "Cedula: #{@patient.cedula}"
pdf.text "Fecha de nacimiento: #{@patient.fecha_nacimiento}"
pdf.text "Fecha de ingreso a la clinica: #{@patient.fecha_ingreso}"
pdf.text "Estado Civil: #{@patient.estado_civil}"
pdf.text "Telefono: #{@patient.telefono}"
pdf.text "Direccion: #{@patient.direccion}"
pdf.text "Estado Civil: #{@patient.estado_civil}"
pdf.move_down(60)
pdf.text "Historial Medico de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
pdf.move_down(30)
pdf.text "Tipo de sangre: #{@patient.medical_history.tipo_sangre}"
pdf.text "Peso: #{@patient.medical_history.peso }"
pdf.text "Altura: #{@patient.medical_history.altura }"
if (@patient.medical_history.posee_alergias==true)
  alergias = "si"
else
  alergias = "no"
end
pdf.text "Alergias: #{alergias}"
pdf.text "Cuales: #{@patient.medical_history.alergias}"
if (@patient.medical_history.fumador==true)
  fuma = "si"
else
  fuma = "no"
end
pdf.text "Fuma?: #{fuma}"
pdf.text "Ocupacion: #{@patient.medical_history.ocupacion}"
pdf.text "Lesiones: #{@patient.medical_history.antecedentes_lesiones}"
pdf.text "Antecedentes Familiares: #{@patient.medical_history.antecedentes_familiares}"
pdf.text "Condicion actual: #{@patient.medical_history.condicion_medica_actual}"
pdf.text "Cirugias: #{@patient.medical_history.cirugias}"
if (@patient.medical_history.reg_its_sida==true)
  sida = "si"
else
  sida = "no"
end
pdf.text "Fuma?: #{sida}"
pdf.move_down(30)
pdf.text "Medicos del paciente #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
doctores = @patient.doctors.uniq
doctores.each do |doctor|
	pdf.text "nombre: #{doctor.nombre + ' ' + doctor.apellido + ', ' + 'especialidad: '+ doctor.especialidad}"
end
pdf.move_down(30)
pdf.text "Consultas del paciente #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
consultas = @patient.appointments
consultas.each do |consulta|
	pdf.text "fecha: #{consulta.fecha}"
	pdf.text "motivo: #{consulta.motivo}"
	pdf.text "doctor: #{consulta.doctor.nombre + ' ' + consulta.doctor.apellido + ', ' + 'especialidad: '+ consulta.doctor.especialidad}"
	pdf.move_down(15)
end
