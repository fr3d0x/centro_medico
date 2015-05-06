json.array!(@pediatric_patients) do |pediatric_patient|
  json.extract! pediatric_patient, :id, :nombre, :apellido, :fecha_nacimiento, :fecha_ingerso, :telefono_padre, :telefono_madre
  json.url pediatric_patient_url(pediatric_patient, format: :json)
end
