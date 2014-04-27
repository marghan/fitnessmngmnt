json.array!(@cardios) do |cardio|
  json.extract! cardio, :id, :exerciseType, :minutesPerMile, :exerciseLevel
  json.url cardio_url(cardio, format: :json)
end
