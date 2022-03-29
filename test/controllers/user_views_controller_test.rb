require 'test_helper'

class UserViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_view = user_views(:one)
  end

  test "should get index" do
    get user_views_url
    assert_response :success
  end

  test "should get new" do
    get new_user_view_url
    assert_response :success
  end

  test "should create user_view" do
    assert_difference('UserView.count') do
      post user_views_url, params: { user_view: { uid: @user_view.uid, user_id: @user_view.user_id } }
    end

    assert_redirected_to user_view_url(UserView.last)
  end

  test "should show user_view" do
    get user_view_url(@user_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_view_url(@user_view)
    assert_response :success
  end

  test "should update user_view" do
    patch user_view_url(@user_view), params: { user_view: { uid: @user_view.uid, user_id: @user_view.user_id } }
    assert_redirected_to user_view_url(@user_view)
  end

  test "should destroy user_view" do
    assert_difference('UserView.count', -1) do
      delete user_view_url(@user_view)
    end

    assert_redirected_to user_views_url
  end
end
