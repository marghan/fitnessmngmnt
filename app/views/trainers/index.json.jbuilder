json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :trainerID, :trainerAddress, :trainerPhone, :trainerEmail
  json.url trainer_url(trainer, format: :json)
end
