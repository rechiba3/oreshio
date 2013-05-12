class StoriesController < InheritedResources::Base
  before_filter :login_check

  def login_check
    redirect_to login_users_path unless session[:login_user]
  end

  def new
    @story = Story.new
    3.times { @story.items.build }
  end

  def edit
    @story = Story.find(params[:id])
    count = 3 - @story.items.count
    count.times { @story.items.build }
  end

end
