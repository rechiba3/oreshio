class StoryUsersController < ApplicationController
  # GET /story_users
  # GET /story_users.json
  def index
    @story_users = StoryUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @story_users }
    end
  end

  # GET /story_users/1
  # GET /story_users/1.json
  def show
    @story_user = StoryUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story_user }
    end
  end

  # GET /story_users/new
  # GET /story_users/new.json
  def new
    @story_user = StoryUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story_user }
    end
  end

  # GET /story_users/1/edit
  def edit
    @story_user = StoryUser.find(params[:id])
  end

  # POST /story_users
  # POST /story_users.json
  def create
    @story_user = StoryUser.new(params[:story_user])

    respond_to do |format|
      if @story_user.save
        format.html { redirect_to @story_user, notice: 'Story user was successfully created.' }
        format.json { render json: @story_user, status: :created, location: @story_user }
      else
        format.html { render action: "new" }
        format.json { render json: @story_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /story_users/1
  # PUT /story_users/1.json
  def update
    @story_user = StoryUser.find(params[:id])

    respond_to do |format|
      if @story_user.update_attributes(params[:story_user])
        format.html { redirect_to @story_user, notice: 'Story user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @story_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_users/1
  # DELETE /story_users/1.json
  def destroy
    @story_user = StoryUser.find(params[:id])
    @story_user.destroy

    respond_to do |format|
      format.html { redirect_to story_users_url }
      format.json { head :no_content }
    end
  end
end
