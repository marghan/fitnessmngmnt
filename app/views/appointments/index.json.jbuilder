json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :ApptID, :clientID, :trainerID, :locationID, :apptDate, :apptTime, :apptType
  json.url appointment_url(appointment, format: :json)
end
