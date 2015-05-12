pdf.text "Control pediatrico de #{@pediatric_control.pediatric_history.pediatric_patient.nombre + ' ' + @pediatric_control.pediatric_history.pediatric_patient.apellido}", :size => 25, :style => :bold
pdf.move_down(35)
pdf.text "B.C.G 1: #{@pediatric_control.bcg1}  B.C.G 2: #{@pediatric_control.bcg2}  B.C.G 3: #{@pediatric_control.bcg3} "
pdf.move_down(8)
pdf.text "Refuerzo Triple 1: #{@pediatric_control.ref_triple1}  Refuerzo Triple 2: #{@pediatric_control.ref_triple2}  Refuerzo Triple 3: #{@pediatric_control.ref_triple3} "
pdf.move_down(8)
pdf.text "Polio 1: #{@pediatric_control.polio1}  Polio 2: #{@pediatric_control.polio2}  Polio 3: #{@pediatric_control.polio3} "
pdf.move_down(8)
pdf.text "Refuerzo Polio 1: #{@pediatric_control.ref_polio1}  Refuerzo Polio 2: #{@pediatric_control.ref_polio2}  Refuerzo Polio 3: #{@pediatric_control.ref_polio3} "
pdf.move_down(8)
pdf.text "Sarampion: #{@pediatric_control.sarampion}"
pdf.move_down(8)
pdf.text "Parotiditis: #{@pediatric_control.parotiditis}"
pdf.move_down(8)
pdf.text "Rubeola: #{@pediatric_control.rubeola}"
pdf.move_down(8)
pdf.text "Fiebre amarilla: #{@pediatric_control.f_amarilla}"
pdf.move_down(8)
pdf.text "Trivalente: #{@pediatric_control.trivalente}"
pdf.move_down(8)
pdf.text "Otras: #{@pediatric_control.otras}"
pdf.move_down(8)
pdf.text "Observaciones: #{@pediatric_control.observaciones}"
pdf.move_down(10)
pdf.text "Control de crecimiento", :size => 25, :style => :bold
controls = @pediatric_control.growth_controls.map do |control|
  [
    control.fecha,
    control.edad,
    control.peso,
    control.talla
  ]
end

pdf.table controls




