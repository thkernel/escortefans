require "application_system_test_case"

class LanguageItemsTest < ApplicationSystemTestCase
  setup do
    @language_item = language_items(:one)
  end

  test "visiting the index" do
    visit language_items_url
    assert_selector "h1", text: "Language Items"
  end

  test "creating a Language item" do
    visit language_items_url
    click_on "New Language Item"

    fill_in "Language", with: @language_item.language_id
    fill_in "Name", with: @language_item.name
    fill_in "Uid", with: @language_item.uid
    click_on "Create Language item"

    assert_text "Language item was successfully created"
    click_on "Back"
  end

  test "updating a Language item" do
    visit language_items_url
    click_on "Edit", match: :first

    fill_in "Language", with: @language_item.language_id
    fill_in "Name", with: @language_item.name
    fill_in "Uid", with: @language_item.uid
    click_on "Update Language item"

    assert_text "Language item was successfully updated"
    click_on "Back"
  end

  test "destroying a Language item" do
    visit language_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Language item was successfully destroyed"
  end
end
