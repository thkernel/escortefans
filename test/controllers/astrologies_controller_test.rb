require 'test_helper'

class AstrologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @astrology = astrologies(:one)
  end

  test "should get index" do
    get astrologies_url
    assert_response :success
  end

  test "should get new" do
    get new_astrology_url
    assert_response :success
  end

  test "should create astrology" do
    assert_difference('Astrology.count') do
      post astrologies_url, params: { astrology: { name: @astrology.name, status: @astrology.status, uid: @astrology.uid } }
    end

    assert_redirected_to astrology_url(Astrology.last)
  end

  test "should show astrology" do
    get astrology_url(@astrology)
    assert_response :success
  end

  test "should get edit" do
    get edit_astrology_url(@astrology)
    assert_response :success
  end

  test "should update astrology" do
    patch astrology_url(@astrology), params: { astrology: { name: @astrology.name, status: @astrology.status, uid: @astrology.uid } }
    assert_redirected_to astrology_url(@astrology)
  end

  test "should destroy astrology" do
    assert_difference('Astrology.count', -1) do
      delete astrology_url(@astrology)
    end

    assert_redirected_to astrologies_url
  end
end
