require "application_system_test_case"

class PhysicalAppearancesTest < ApplicationSystemTestCase
  setup do
    @physical_appearance = physical_appearances(:one)
  end

  test "visiting the index" do
    visit physical_appearances_url
    assert_selector "h1", text: "Physical Appearances"
  end

  test "creating a Physical appearance" do
    visit physical_appearances_url
    click_on "New Physical Appearance"

    fill_in "Uid", with: @physical_appearance.uid
    fill_in "User", with: @physical_appearance.user_id
    click_on "Create Physical appearance"

    assert_text "Physical appearance was successfully created"
    click_on "Back"
  end

  test "updating a Physical appearance" do
    visit physical_appearances_url
    click_on "Edit", match: :first

    fill_in "Uid", with: @physical_appearance.uid
    fill_in "User", with: @physical_appearance.user_id
    click_on "Update Physical appearance"

    assert_text "Physical appearance was successfully updated"
    click_on "Back"
  end

  test "destroying a Physical appearance" do
    visit physical_appearances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Physical appearance was successfully destroyed"
  end
end
