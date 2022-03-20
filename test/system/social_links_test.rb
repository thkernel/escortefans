require "application_system_test_case"

class SocialLinksTest < ApplicationSystemTestCase
  setup do
    @social_link = social_links(:one)
  end

  test "visiting the index" do
    visit social_links_url
    assert_selector "h1", text: "Social Links"
  end

  test "creating a Social link" do
    visit social_links_url
    click_on "New Social Link"

    fill_in "Name", with: @social_link.name
    fill_in "Uid", with: @social_link.uid
    fill_in "Url", with: @social_link.url
    fill_in "User", with: @social_link.user_id
    click_on "Create Social link"

    assert_text "Social link was successfully created"
    click_on "Back"
  end

  test "updating a Social link" do
    visit social_links_url
    click_on "Edit", match: :first

    fill_in "Name", with: @social_link.name
    fill_in "Uid", with: @social_link.uid
    fill_in "Url", with: @social_link.url
    fill_in "User", with: @social_link.user_id
    click_on "Update Social link"

    assert_text "Social link was successfully updated"
    click_on "Back"
  end

  test "destroying a Social link" do
    visit social_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social link was successfully destroyed"
  end
end
