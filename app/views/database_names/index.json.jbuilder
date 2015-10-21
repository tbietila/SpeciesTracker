json.array!(@database_names) do |database_name|
  json.extract! database_name, :id, :name
  json.url database_name_url(database_name, format: :json)
end
