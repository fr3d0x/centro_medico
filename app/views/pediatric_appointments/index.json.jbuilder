json.array!(@pediatric_appointments) do |pediatric_appointment|
  json.extract! pediatric_appointment, :id, :responsable, :telefono, :relacion, :patients_id, :pediatric_patients_id
  json.url pediatric_appointment_url(pediatric_appointment, format: :json)
end
