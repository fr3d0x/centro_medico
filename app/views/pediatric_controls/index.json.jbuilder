json.array!(@pediatric_controls) do |pediatric_control|
  json.extract! pediatric_control, :id, :b.c.g1, :b.c.g2, :b.c.g3, :triple1, :triple2, :triple3, :ref_triple1, :ref_triple2, :ref_triple3, :polio1, :polio2, :polio3, :ref_polio1, :ref_polio2, :ref_polio3, :sarampion, :parotiditis, :rubeola, :f_amarilla, :trivalente, :otras, :observaciones
  json.url pediatric_control_url(pediatric_control, format: :json)
end
