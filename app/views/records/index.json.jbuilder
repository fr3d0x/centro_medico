json.array!(@records) do |record|
  json.extract! record, :id, :rec_nemonico, :rec_descripcion, :rec_integer, :rec_char, :rec_varchar, :rec_float, :rec_boolean, :rec_fech, :rec_activo, :table_id
  json.url record_url(record, format: :json)
end
