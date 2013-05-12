class StoriesController < InheritedResources::Base
  before_filter :login_check

  def login_check
    redirect_to login_users_path unless session[:login_user]
  end

  def new
    @story = Story.new
    3.times { @story.items.build }
    3.times { @story.visiteds.build }
  end

  def edit
    @story = Story.find(params[:id])
    item_count = 3 - @story.items.count
    item_count.times { @story.items.build }
    visited_count = 3 - @story.visiteds.count
    visited_count.times { @story.visiteds.build }
  end

end
