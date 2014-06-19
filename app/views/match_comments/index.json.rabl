object false

child @objects do
  attributes :id, :content, :created_at, :updated_at

  node :links do |match_comment|
    {
      user: match_comment.user,
      match: match_comment.match
    }
  end

  node :href do |match_comment|
    match_comment_url(match_comment)
  end
end

node :links do
  {
    "match_comments.user" => users_url + "/{match_comments.user}",
    "match_comments.match" => matches_url + "/{match_comments.match}"
  }
end

node :meta do
  { "client-ids" => true }
end