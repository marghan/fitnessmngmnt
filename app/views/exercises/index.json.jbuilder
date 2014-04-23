json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :exerciseID, :exerciseType, :exerciseName, :muscleGroup, :equipment
  json.url exercise_url(exercise, format: :json)
end
