require 'test_helper'

class EscortCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escort_category = escort_categories(:one)
  end

  test "should get index" do
    get escort_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_escort_category_url
    assert_response :success
  end

  test "should create escort_category" do
    assert_difference('EscortCategory.count') do
      post escort_categories_url, params: { escort_category: { description: @escort_category.description, name: @escort_category.name, status: @escort_category.status, uid: @escort_category.uid, user_id: @escort_category.user_id } }
    end

    assert_redirected_to escort_category_url(EscortCategory.last)
  end

  test "should show escort_category" do
    get escort_category_url(@escort_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_escort_category_url(@escort_category)
    assert_response :success
  end

  test "should update escort_category" do
    patch escort_category_url(@escort_category), params: { escort_category: { description: @escort_category.description, name: @escort_category.name, status: @escort_category.status, uid: @escort_category.uid, user_id: @escort_category.user_id } }
    assert_redirected_to escort_category_url(@escort_category)
  end

  test "should destroy escort_category" do
    assert_difference('EscortCategory.count', -1) do
      delete escort_category_url(@escort_category)
    end

    assert_redirected_to escort_categories_url
  end
end
