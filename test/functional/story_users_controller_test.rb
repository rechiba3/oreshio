require 'test_helper'

class StoryUsersControllerTest < ActionController::TestCase
  setup do
    @story_user = story_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_user" do
    assert_difference('StoryUser.count') do
      post :create, story_user: {  }
    end

    assert_redirected_to story_user_path(assigns(:story_user))
  end

  test "should show story_user" do
    get :show, id: @story_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_user
    assert_response :success
  end

  test "should update story_user" do
    put :update, id: @story_user, story_user: {  }
    assert_redirected_to story_user_path(assigns(:story_user))
  end

  test "should destroy story_user" do
    assert_difference('StoryUser.count', -1) do
      delete :destroy, id: @story_user
    end

    assert_redirected_to story_users_path
  end
end
