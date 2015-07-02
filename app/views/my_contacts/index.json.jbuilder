json.array!(@my_contacts) do |my_contact|
  json.extract! my_contact, :id, :name, :email, :cell, :address
  json.url my_contact_url(my_contact, format: :json)
end
