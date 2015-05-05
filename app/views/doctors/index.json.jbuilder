json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :nombre, :apellido, :especialidad, :cedula, :direccion, :telefono1, :telefono2
  json.url doctor_url(doctor, format: :json)
end
