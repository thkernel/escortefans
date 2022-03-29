require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @like = likes(:one)
  end

  test "should get index" do
    get likes_url
    assert_response :success
  end

  test "should get new" do
    get new_like_url
    assert_response :success
  end

  test "should create like" do
    assert_difference('Like.count') do
      post likes_url, params: { like: { recipient_id: @like.recipient_id, remove_at: @like.remove_at, sender_id: @like.sender_id, uid: @like.uid } }
    end

    assert_redirected_to like_url(Like.last)
  end

  test "should show like" do
    get like_url(@like)
    assert_response :success
  end

  test "should get edit" do
    get edit_like_url(@like)
    assert_response :success
  end

  test "should update like" do
    patch like_url(@like), params: { like: { recipient_id: @like.recipient_id, remove_at: @like.remove_at, sender_id: @like.sender_id, uid: @like.uid } }
    assert_redirected_to like_url(@like)
  end

  test "should destroy like" do
    assert_difference('Like.count', -1) do
      delete like_url(@like)
    end

    assert_redirected_to likes_url
  end
end
