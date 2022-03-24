require "application_system_test_case"

class ServiceUserItemsTest < ApplicationSystemTestCase
  setup do
    @service_user_item = service_user_items(:one)
  end

  test "visiting the index" do
    visit service_user_items_url
    assert_selector "h1", text: "Service User Items"
  end

  test "creating a Service user item" do
    visit service_user_items_url
    click_on "New Service User Item"

    fill_in "Price", with: @service_user_item.price
    fill_in "Service", with: @service_user_item.service_id
    fill_in "Service user", with: @service_user_item.service_user_id
    fill_in "Uid", with: @service_user_item.uid
    click_on "Create Service user item"

    assert_text "Service user item was successfully created"
    click_on "Back"
  end

  test "updating a Service user item" do
    visit service_user_items_url
    click_on "Edit", match: :first

    fill_in "Price", with: @service_user_item.price
    fill_in "Service", with: @service_user_item.service_id
    fill_in "Service user", with: @service_user_item.service_user_id
    fill_in "Uid", with: @service_user_item.uid
    click_on "Update Service user item"

    assert_text "Service user item was successfully updated"
    click_on "Back"
  end

  test "destroying a Service user item" do
    visit service_user_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service user item was successfully destroyed"
  end
end
