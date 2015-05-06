json.array!(@growth_controls) do |growth_control|
  json.extract! growth_control, :id, :fecha, :edad, :peso, :talla
  json.url growth_control_url(growth_control, format: :json)
end
