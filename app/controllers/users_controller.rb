class UsersController < RestController

  protected

  def configure_controller
    config[:display] = [ :user_name, :first_name, :last_name, :avatar,
                         :salt, :fish, :description, :home_country, :home_town, :website,
                         :reset_code, :reset_expires_at, :coins, :win_percentage, :current_streak ]    # Fields to (optionally) include in the JSON
    
    config[:require] = [ :id, :email ]                                                                 # Fields that MUST be included in the JSON
    
    config[:permit]  = [ :email, :user_name, :first_name, :last_name, :avatar,
                         :salt, :fish, :description, :home_country, :home_town, :website,
                         :reset_code, :reset_expires_at, :coins, :win_percentage, :current_streak ]    # Permitted params for create/replace/update
    
    config[:include] = [ :bets, :match_comments,
                         :followings_as_followers, :followings_as_followees,
                         :profile_comments_as_commentors, :profile_comments_as_commentees ]            # Associated objects to be eagerly loaded
  end

end

# TODO:  add more data for bets ?
