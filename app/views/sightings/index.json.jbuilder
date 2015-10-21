json.array!(@sightings) do |sighting|
  json.extract! sighting, :id, :date, :long, :lat
  json.url sighting_url(sighting, format: :json)
end
