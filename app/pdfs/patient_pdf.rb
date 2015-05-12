class PatientPdf< Prawn::Document
	def initialize(patient)
		super(top_margin: 40)
		@patient = patient
		text "Datos Personales de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
		text "Numero de Historial: #{@patient.num_hist_medica}"
		text "Cedula: #{@patient.cedula}"
		text "Fecha de nacimiento: #{@patient.fecha_nacimiento}"
		text "Fecha de ingreso a la clinica: #{@patient.fecha_ingreso}"
		text "Estado Civil: #{@patient.estado_civil}"
		text "Telefono: #{@patient.telefono}"
		text "Direccion: #{@patient.direccion}"
		text "Estado Civil: #{@patient.estado_civil}"
		move_down(60)
		text "Historial Medico de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
		move_down(30)
		text "Tipo de sangre: #{@patient.medical_history.tipo_sangre}"
		text "Peso: #{@patient.medical_history.peso }"
		text "Altura: #{@patient.medical_history.altura }"
		if (@patient.medical_history.posee_alergias==true)
		  alergias = "si"
		else
		  alergias = "no"
		end
		text "Alergias: #{alergias}"
		text "Cuales: #{@patient.medical_history.alergias}"
		if (@patient.medical_history.fumador==true)
		  fuma = "si"
		else
		  fuma = "no"
		end
		text "Ocupacion: #{@patient.medical_history.ocupacion}"
		text "Lesiones: #{@patient.medical_history.antecedentes_lesiones}"
		text "Antecedentes Familiares: #{@patient.medical_history.antecedentes_familiares}"
		text "Condicion actual: #{@patient.medical_history.condicion_medica_actual}"
		text "Cirugias: #{@patient.medical_history.cirugias}"
		if (@patient.medical_history.reg_its_sida==true)
		  sida = "si"
		else
		  sida = "no"
		end
		text "Fuma?: #{sida}"
		move_down(30)
		text "Medicos del paciente #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
		doctores = @patient.doctors.uniq
		doctores.each do |doctor|
			text "nombre: #{doctor.nombre + ' ' + doctor.apellido + ', ' + 'especialidad: '+ doctor.especialidad}"
		end
		move_down(30)
		text "Consultas del paciente #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
		i = 1
		consultas = @patient.appointments
		consultas.each do |consulta|
		  i
		  text "#{i}.-"
			text "fecha: #{consulta.fecha}"
			text "motivo: #{consulta.motivo}"
			text "doctor: #{consulta.doctor.nombre + ' ' + consulta.doctor.apellido + ', ' + 'especialidad: '+ consulta.doctor.especialidad}"
			i = i+1
		  move_down(15)
		end
	end
end