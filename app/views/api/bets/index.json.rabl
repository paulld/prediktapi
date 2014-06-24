object false

# This creates an "bets": [] key-value pair with one or more bet hashes
# Adding the => :bets ensures that an empty array still displays
child @bets => :bets do
  attributes :id, :bet_type, :wager, :odds, :result, :gain, :status, :created_at, :updated_at

  # node :tags do |bet|
  #   bet.tags.map {|t| t.name }
  # end

  node :links do |bet|
    {
      user: bet.user.id,     # only show id with user.id ??
      match: bet.match.id     # only show id with match.id ??
    }
  end

  node :href do |bet|
    api_bet_url(bet)
  end
end

# :links provides a hash of URL templates to satisfy the hypermedia constraint
node :links do
  {
    "bets.user" => api_users_url + "/{bets.user}",
    "bets.match" => api_matches_url + "/{bets.match}"
  }
end

node :meta do
  { "client-ids" => true }
end
