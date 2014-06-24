# We set the object to false so that we can control the top level hash
object false

# `node` adds a key-value pair to our hash
# The value is passed in a block and can be anything we want,
# including another hash
# Because we're in a view, view helpers such as the route helpers are available
node :links do
  {
    uuid: api_uuid_url,
    registrants: api_registrants_url,
    users: api_users_url,
    leagues: api_leagues_url,
    matches: api_matches_url,
    bets: api_bets_url,
    match_comments: api_match_comments_url,
    profile_comments: api_profile_comments_url,
    followings: api_followings_url
  }
end

# The "client-ids" meta element indicates that we expect the client to
# provide the ids, ensuring idempotency
node :meta do
  { "client-ids" => true }
end
