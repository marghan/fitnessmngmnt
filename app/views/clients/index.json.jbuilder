json.array!(@clients) do |client|
  json.extract! client, :id, :ClientID, :ClientName, :ClientAddress, :creditCardNo, :emergencyContact, :startdate, :appointmentCount
  json.url client_url(client, format: :json)
end
