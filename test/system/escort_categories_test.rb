require "application_system_test_case"

class EscortCategoriesTest < ApplicationSystemTestCase
  setup do
    @escort_category = escort_categories(:one)
  end

  test "visiting the index" do
    visit escort_categories_url
    assert_selector "h1", text: "Escort Categories"
  end

  test "creating a Escort category" do
    visit escort_categories_url
    click_on "New Escort Category"

    fill_in "Description", with: @escort_category.description
    fill_in "Name", with: @escort_category.name
    fill_in "Status", with: @escort_category.status
    fill_in "Uid", with: @escort_category.uid
    fill_in "User", with: @escort_category.user_id
    click_on "Create Escort category"

    assert_text "Escort category was successfully created"
    click_on "Back"
  end

  test "updating a Escort category" do
    visit escort_categories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @escort_category.description
    fill_in "Name", with: @escort_category.name
    fill_in "Status", with: @escort_category.status
    fill_in "Uid", with: @escort_category.uid
    fill_in "User", with: @escort_category.user_id
    click_on "Update Escort category"

    assert_text "Escort category was successfully updated"
    click_on "Back"
  end

  test "destroying a Escort category" do
    visit escort_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Escort category was successfully destroyed"
  end
end
