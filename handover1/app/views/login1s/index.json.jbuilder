json.array!(@login1s) do |login1|
  json.extract! login1, :id, :Email, :CompanyName, :Phone, :EscalationLevel
  json.url login1_url(login1, format: :json)
end
