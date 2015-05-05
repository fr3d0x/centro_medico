json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :apellido, :nombre, :cedula, :telefono, :menor
  json.url appointment_url(appointment, format: :json)
end
