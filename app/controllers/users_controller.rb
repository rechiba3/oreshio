class UsersController < InheritedResources::Base
  before_filter :login_check, only: [ :login, :new ]

  def login_check
    redirect_to new_story_path if session[:login_user]
  end

  def auth_callback
    session[:oauth_data] = nil if session[:oauth_data]

    omniauth = request.env['omniauth.auth']
    oauth_data = {
      uid: omniauth[:uid],
      name: omniauth[:info][:name]
    }

    oauth = Oauth.find_or_create_by_provider_and_uid( omniauth[:provider], omniauth[:uid] )

    if oauth.user.present?
      session[:login_user] =  oauth.user_id
      return redirect_to new_story_path
    else
      redirect_to new_user_path
    end

    if omniauth[:provider] == "facebook"
      oauth_data[:image_url] = omniauth[:info][:image].sub('?type=square', '?width=200&height=200')
      avatar_image = open(URI.parse(oauth_data[:image_url])) rescue ''

      oauth.update_attributes( 
        :token            => omniauth[:credentials][:token],
        :token_expires_at => omniauth[:credentials][:expires_at],
        :avatar => avatar_image )
    elsif omniauth[:provider] == "twitter"
      oauth_data[:image_url] = omniauth[:info][:image].sub('normal', 'bigger')
      avatar_image = open(URI.parse(oauth_data[:image_url])) rescue ''

      oauth.update_attributes(
        :token        => omniauth[:credentials][:token], 
        :token_secret => omniauth[:credentials][:secret],
        :avatar => avatar_image )
    end

    session[:oauth_data] = oauth_data
  end

  def logout
    session[:oauth_data] = nil
    session[:login_user] = nil
    redirect_to root_path
  end

  def new
    return redirect_to login_users_path unless session[:oauth_data]
    @user = User.new name: session[:oauth_data][:name]
  end

  def create
    create! do |format|
      format.html {     
        oauth = Oauth.find_by_uid(session[:oauth_data][:uid])
        oauth.update_attributes( user_id: @user.id )
        session[:login_user] = @user.id
        redirect_to new_story_path
      }
    end
  end

  def update
    update! { edit_user_path(session[:login_user]) }
  end

end
