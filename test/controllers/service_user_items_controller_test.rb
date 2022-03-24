require 'test_helper'

class ServiceUserItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_user_item = service_user_items(:one)
  end

  test "should get index" do
    get service_user_items_url
    assert_response :success
  end

  test "should get new" do
    get new_service_user_item_url
    assert_response :success
  end

  test "should create service_user_item" do
    assert_difference('ServiceUserItem.count') do
      post service_user_items_url, params: { service_user_item: { price: @service_user_item.price, service_id: @service_user_item.service_id, service_user_id: @service_user_item.service_user_id, uid: @service_user_item.uid } }
    end

    assert_redirected_to service_user_item_url(ServiceUserItem.last)
  end

  test "should show service_user_item" do
    get service_user_item_url(@service_user_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_user_item_url(@service_user_item)
    assert_response :success
  end

  test "should update service_user_item" do
    patch service_user_item_url(@service_user_item), params: { service_user_item: { price: @service_user_item.price, service_id: @service_user_item.service_id, service_user_id: @service_user_item.service_user_id, uid: @service_user_item.uid } }
    assert_redirected_to service_user_item_url(@service_user_item)
  end

  test "should destroy service_user_item" do
    assert_difference('ServiceUserItem.count', -1) do
      delete service_user_item_url(@service_user_item)
    end

    assert_redirected_to service_user_items_url
  end
end
