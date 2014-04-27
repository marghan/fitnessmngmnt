json.array!(@flexibilities) do |flexibility|
  json.extract! flexibility, :id, :exerciseType, :stretchDistance
  json.url flexibility_url(flexibility, format: :json)
end
