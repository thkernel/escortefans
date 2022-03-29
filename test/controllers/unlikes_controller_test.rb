require 'test_helper'

class UnlikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unlike = unlikes(:one)
  end

  test "should get index" do
    get unlikes_url
    assert_response :success
  end

  test "should get new" do
    get new_unlike_url
    assert_response :success
  end

  test "should create unlike" do
    assert_difference('Unlike.count') do
      post unlikes_url, params: { unlike: { recipient_id: @unlike.recipient_id, remove_at: @unlike.remove_at, sender_id: @unlike.sender_id, uid: @unlike.uid } }
    end

    assert_redirected_to unlike_url(Unlike.last)
  end

  test "should show unlike" do
    get unlike_url(@unlike)
    assert_response :success
  end

  test "should get edit" do
    get edit_unlike_url(@unlike)
    assert_response :success
  end

  test "should update unlike" do
    patch unlike_url(@unlike), params: { unlike: { recipient_id: @unlike.recipient_id, remove_at: @unlike.remove_at, sender_id: @unlike.sender_id, uid: @unlike.uid } }
    assert_redirected_to unlike_url(@unlike)
  end

  test "should destroy unlike" do
    assert_difference('Unlike.count', -1) do
      delete unlike_url(@unlike)
    end

    assert_redirected_to unlikes_url
  end
end
