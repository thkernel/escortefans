require "application_system_test_case"

class UserViewsTest < ApplicationSystemTestCase
  setup do
    @user_view = user_views(:one)
  end

  test "visiting the index" do
    visit user_views_url
    assert_selector "h1", text: "User Views"
  end

  test "creating a User view" do
    visit user_views_url
    click_on "New User View"

    fill_in "Uid", with: @user_view.uid
    fill_in "User", with: @user_view.user_id
    click_on "Create User view"

    assert_text "User view was successfully created"
    click_on "Back"
  end

  test "updating a User view" do
    visit user_views_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @user_view.uid
    fill_in "User", with: @user_view.user_id
    click_on "Update User view"

    assert_text "User view was successfully updated"
    click_on "Back"
  end

  test "destroying a User view" do
    visit user_views_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User view was successfully destroyed"
  end
end
