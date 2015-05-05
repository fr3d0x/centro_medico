json.array!(@tables) do |table|
  json.extract! table, :id, :tab_nombre, :tab_nemonico, :tab_descripcion
  json.url table_url(table, format: :json)
end
