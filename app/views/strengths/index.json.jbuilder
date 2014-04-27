json.array!(@strengths) do |strength|
  json.extract! strength, :id, :exerciseType, :maxRepetitions, :exerciseWeight
  json.url strength_url(strength, format: :json)
end
