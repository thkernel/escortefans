require 'test_helper'

class PhysicalAppearancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @physical_appearance = physical_appearances(:one)
  end

  test "should get index" do
    get physical_appearances_url
    assert_response :success
  end

  test "should get new" do
    get new_physical_appearance_url
    assert_response :success
  end

  test "should create physical_appearance" do
    assert_difference('PhysicalAppearance.count') do
      post physical_appearances_url, params: { physical_appearance: { uid: @physical_appearance.uid, user_id: @physical_appearance.user_id } }
    end

    assert_redirected_to physical_appearance_url(PhysicalAppearance.last)
  end

  test "should show physical_appearance" do
    get physical_appearance_url(@physical_appearance)
    assert_response :success
  end

  test "should get edit" do
    get edit_physical_appearance_url(@physical_appearance)
    assert_response :success
  end

  test "should update physical_appearance" do
    patch physical_appearance_url(@physical_appearance), params: { physical_appearance: { uid: @physical_appearance.uid, user_id: @physical_appearance.user_id } }
    assert_redirected_to physical_appearance_url(@physical_appearance)
  end

  test "should destroy physical_appearance" do
    assert_difference('PhysicalAppearance.count', -1) do
      delete physical_appearance_url(@physical_appearance)
    end

    assert_redirected_to physical_appearances_url
  end
end
