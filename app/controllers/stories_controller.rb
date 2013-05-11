class StoriesController < InheritedResources::Base
  before_filter :login_check

  def login_check
    redirect_to login_users_path unless session[:login_user]
  end

end
