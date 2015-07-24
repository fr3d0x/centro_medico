json.array!(@patients) do |patient|
  json.extract! patient, :id, :cedula, :num_hist_medica, :apellido, :nombre, :fecha_nacimiento, :fecha_ingreso, :estado_civil, :telefono, :direccion
  json.url patient_url(patient, format: :json)
end
