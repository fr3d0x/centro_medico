json.array!(@pediatric_histories) do |pediatric_history|
  json.extract! pediatric_history, :id, :edad, :genero, :peso, :talla, :lugar_nacimiento, :lugar_residencia, :padre, :madre, :diagnostico_familiar, :antecedentes_pre-natales, :antecedentes_natales, :antecedentes_port-natales, :sintomas_generales
  json.url pediatric_history_url(pediatric_history, format: :json)
end
