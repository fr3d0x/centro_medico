json.array!(@appointment_reports) do |appointment_report|
  json.extract! appointment_report, :id, :motivo, :diagnostico, :tratamiento, :informe_medico
  json.url appointment_report_url(appointment_report, format: :json)
end
