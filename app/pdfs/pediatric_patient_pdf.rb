class PediatricPatientPdf< Prawn::Document
	def initialize(pediatric_patient)
		super(top_margin: 40)
		@patient = pediatric_patient
		text "Historial Pediatrico de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
		text "Genero: #{@patient.pediatric_history.genero}"
		text "Peso: #{@patient.pediatric_history.peso}"
		text "Talla: #{@patient.pediatric_history.talla}"
		text "Lugar de Nacimiento: #{@patient.pediatric_history.lugar_nacimiento}"
		text "Lugar de residencia: #{@patient.pediatric_history.lugar_residencia}"
		text "Padre: #{@patient.pediatric_history.padre}"
		text "Cedula del padre: #{@patient.pediatric_history.ced_padre}"
		text "Madre: #{@patient.pediatric_history.madre}"
		text "Cedula de la madre: #{@patient.pediatric_history.ced_madre}"
		text "Diagnostico familiar: #{@patient.pediatric_history.diagnostico_familiar}"
		text "Antecedentes pre-natales: #{@patient.pediatric_history.antecedentes_prenatales}"
		text "Antecedentes natales: #{@patient.pediatric_history.antecedentes_natales}"
		text "Antecedentes post-natales: #{@patient.pediatric_history.antecedentes_postnatales}"
		text "Sintomas Generales: #{@patient.pediatric_history.sintomas_generales}"
		if @patient.pediatric_history.pediatric_control
			move_down(10)
			text "Control Pediatrico de #{@patient.nombre + ' ' + @patient.apellido}", :size => 25, :style => :bold
			move_down(20)
			text "B.C.G 1: #{@patient.pediatric_history.pediatric_control.bcg1} | B.C.G 2: #{@patient.pediatric_history.pediatric_control.bcg2} | B.C.G 3: #{@patient.pediatric_history.pediatric_control.bcg3} "
			move_down(8)
			text "Refuerzo Triple 1: #{@patient.pediatric_history.pediatric_control.ref_triple1} | Refuerzo Triple 2: #{@patient.pediatric_history.pediatric_control.ref_triple2} | Refuerzo Triple 3: #{@patient.pediatric_history.pediatric_control.ref_triple3} "
			move_down(8)
			text "Polio 1: #{@patient.pediatric_history.pediatric_control.polio1} | Polio 2: #{@patient.pediatric_history.pediatric_control.polio2} | Polio 3: #{@patient.pediatric_history.pediatric_control.polio3} "
			move_down(8)
			text "Refuerzo Polio 1: #{@patient.pediatric_history.pediatric_control.ref_polio1} | Refuerzo Polio 2: #{@patient.pediatric_history.pediatric_control.ref_polio2} | Refuerzo Polio 3: #{@patient.pediatric_history.pediatric_control.ref_polio3} "
			move_down(8)
			text "Sarampion: #{@patient.pediatric_history.pediatric_control.sarampion}"
			move_down(8)
			text "Parotiditis: #{@patient.pediatric_history.pediatric_control.parotiditis}"
			move_down(8)
			text "Rubeola: #{@patient.pediatric_history.pediatric_control.rubeola}"
			move_down(8)
			text "Fiebre amarilla: #{@patient.pediatric_history.pediatric_control.f_amarilla}"
			move_down(8)
			text "Trivalente: #{@patient.pediatric_history.pediatric_control.trivalente}"
			move_down(8)
			text "Otras: #{@patient.pediatric_history.pediatric_control.otras}"
			move_down(8)
			text "Observaciones: #{@patient.pediatric_history.pediatric_control.observaciones}"
			move_down(10)
			text "Control de crecimiento", :size => 25, :style => :bold
			controls = @patient.pediatric_history.pediatric_control.growth_controls.map do |control|
			  [
			    control.fecha,
			    control.edad,
			    control.peso,
			    control.talla
			  ]
			end
			table [["Fecha", "Edad", "Peso", "Talla"]] + controls	do
				row(0).font_style = :bold
				row(0).backgrownd_color = "58FAF4"
				self.row_colors = ["DDDDDD", "FFFFFF"]
				self.header = true
			end
		end
	end
end