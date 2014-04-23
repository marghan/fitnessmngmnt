json.array!(@locations) do |location|
  json.extract! location, :id, :locationID, :LocationAddress, :LocationPhone, :Outdoor
  json.url location_url(location, format: :json)
end
