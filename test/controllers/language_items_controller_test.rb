require 'test_helper'

class LanguageItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_item = language_items(:one)
  end

  test "should get index" do
    get language_items_url
    assert_response :success
  end

  test "should get new" do
    get new_language_item_url
    assert_response :success
  end

  test "should create language_item" do
    assert_difference('LanguageItem.count') do
      post language_items_url, params: { language_item: { language_id: @language_item.language_id, name: @language_item.name, uid: @language_item.uid } }
    end

    assert_redirected_to language_item_url(LanguageItem.last)
  end

  test "should show language_item" do
    get language_item_url(@language_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_item_url(@language_item)
    assert_response :success
  end

  test "should update language_item" do
    patch language_item_url(@language_item), params: { language_item: { language_id: @language_item.language_id, name: @language_item.name, uid: @language_item.uid } }
    assert_redirected_to language_item_url(@language_item)
  end

  test "should destroy language_item" do
    assert_difference('LanguageItem.count', -1) do
      delete language_item_url(@language_item)
    end

    assert_redirected_to language_items_url
  end
end
