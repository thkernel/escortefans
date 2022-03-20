require 'test_helper'

class SexualOrientationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sexual_orientation = sexual_orientations(:one)
  end

  test "should get index" do
    get sexual_orientations_url
    assert_response :success
  end

  test "should get new" do
    get new_sexual_orientation_url
    assert_response :success
  end

  test "should create sexual_orientation" do
    assert_difference('SexualOrientation.count') do
      post sexual_orientations_url, params: { sexual_orientation: { name: @sexual_orientation.name, status: @sexual_orientation.status, uid: @sexual_orientation.uid } }
    end

    assert_redirected_to sexual_orientation_url(SexualOrientation.last)
  end

  test "should show sexual_orientation" do
    get sexual_orientation_url(@sexual_orientation)
    assert_response :success
  end

  test "should get edit" do
    get edit_sexual_orientation_url(@sexual_orientation)
    assert_response :success
  end

  test "should update sexual_orientation" do
    patch sexual_orientation_url(@sexual_orientation), params: { sexual_orientation: { name: @sexual_orientation.name, status: @sexual_orientation.status, uid: @sexual_orientation.uid } }
    assert_redirected_to sexual_orientation_url(@sexual_orientation)
  end

  test "should destroy sexual_orientation" do
    assert_difference('SexualOrientation.count', -1) do
      delete sexual_orientation_url(@sexual_orientation)
    end

    assert_redirected_to sexual_orientations_url
  end
end
