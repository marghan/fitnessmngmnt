json.array!(@payments) do |payment|
  json.extract! payment, :id, :paymentID, :paymentDate, :paymentAmount, :paymentMethod, :invoiceID
  json.url payment_url(payment, format: :json)
end
