object false

# This creates an "registrants": [] key-value pair with one or more bet hashes
# Adding the => :registrants ensures that an empty array still displays
child @registrants => :registrants do
  attributes :id, :email, :registration_code, :registration_expires_at, :created_at, :updated_at

  node :href do |registrant|
    api_registrant_url(registrant)
  end
end

node :meta do
  { "client-ids" => true }
end