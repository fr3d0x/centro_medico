class PediatricControlPdf< Prawn::Document

	def age(dob)
  now = Time.now.utc.to_date
  now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
	end

	def initialize(pediatric_control)
		super(top_margin: 70)
		@pediatric_control = pediatric_control

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
		move_down(25)
		text "Control pediatrico de #{@pediatric_control.pediatric_history.pediatric_patient.nombre + ' ' + @pediatric_control.pediatric_history.pediatric_patient.apellido}", :size => 25, :style => :bold
		move_down(35)
		text "B.C.G 1: #{@pediatric_control.bcg1} | B.C.G 2: #{@pediatric_control.bcg2} | B.C.G 3: #{@pediatric_control.bcg3} "
		move_down(8)
		text "Refuerzo Triple 1: #{@pediatric_control.ref_triple1} | Refuerzo Triple 2: #{@pediatric_control.ref_triple2} | Refuerzo Triple 3: #{@pediatric_control.ref_triple3} "
		move_down(8)
		text "Polio 1: #{@pediatric_control.polio1} | Polio 2: #{@pediatric_control.polio2} | Polio 3: #{@pediatric_control.polio3} "
		move_down(8)
		text "Refuerzo Polio 1: #{@pediatric_control.ref_polio1} | Refuerzo Polio 2: #{@pediatric_control.ref_polio2} | Refuerzo Polio 3: #{@pediatric_control.ref_polio3} "
		move_down(8)
		text "Sarampion: #{@pediatric_control.sarampion}"
		move_down(8)
		text "Parotiditis: #{@pediatric_control.parotiditis}"
		move_down(8)
		text "Rubeola: #{@pediatric_control.rubeola}"
		move_down(8)
		text "Fiebre amarilla: #{@pediatric_control.f_amarilla}"
		move_down(8)
		text "Trivalente: #{@pediatric_control.trivalente}"
		move_down(8)
		text "Otras: #{@pediatric_control.otras}"
		move_down(8)
		text "Observaciones: #{@pediatric_control.observaciones}"
		move_down(10)
		text "Control de crecimiento", :size => 25, :style => :bold
		controls = @pediatric_control.growth_controls.map do |control|
			if age(@pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento) < 1 
	    	if (DateTime.now.to_date - @pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento).to_i / 30 == 1 
	      	@edad = ((DateTime.now.to_date - @pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento).to_i / 30).to_s + " mes"
	    	else 
	      	@edad = ((DateTime.now.to_date - @pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento).to_i / 30).to_s + " meses"
	    end
	  	else 
	    	if age(@pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento) == 1 
	      	@edad = age(@pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento).to_s + " año"
	    	else
	      	@edad = age(@pediatric_control.pediatric_history.pediatric_patient.fecha_nacimiento).to_s + " años"
	    	end
	  	end
		  [
		    control.fecha,
		    @edad,
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