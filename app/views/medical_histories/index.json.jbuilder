json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :id, :tipo_sangre, :peso, :altura, :posee_alergias, :alergias, :fumador, :ocupacion, :antecedentes_lesiones, :antecedentes_familiares, :condicion_medica_actual, :cirugias, :reg_its_sida
  json.url medical_history_url(medical_history, format: :json)
end
