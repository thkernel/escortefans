require "application_system_test_case"

class SocialMediaTest < ApplicationSystemTestCase
  setup do
    @social_medium = social_media(:one)
  end

  test "visiting the index" do
    visit social_media_url
    assert_selector "h1", text: "Social Media"
  end

  test "creating a Social medium" do
    visit social_media_url
    click_on "New Social Medium"

    fill_in "Name", with: @social_medium.name
    fill_in "Uid", with: @social_medium.uid
    fill_in "Url", with: @social_medium.url
    fill_in "User", with: @social_medium.user_id
    click_on "Create Social medium"

    assert_text "Social medium was successfully created"
    click_on "Back"
  end

  test "updating a Social medium" do
    visit social_media_url
    click_on "Edit", match: :first

    fill_in "Name", with: @social_medium.name
    fill_in "Uid", with: @social_medium.uid
    fill_in "Url", with: @social_medium.url
    fill_in "User", with: @social_medium.user_id
    click_on "Update Social medium"

    assert_text "Social medium was successfully updated"
    click_on "Back"
  end

  test "destroying a Social medium" do
    visit social_media_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social medium was successfully destroyed"
  end
end
