require "application_system_test_case"

class SexualOrientationsTest < ApplicationSystemTestCase
  setup do
    @sexual_orientation = sexual_orientations(:one)
  end

  test "visiting the index" do
    visit sexual_orientations_url
    assert_selector "h1", text: "Sexual Orientations"
  end

  test "creating a Sexual orientation" do
    visit sexual_orientations_url
    click_on "New Sexual Orientation"

    fill_in "Name", with: @sexual_orientation.name
    fill_in "Status", with: @sexual_orientation.status
    fill_in "Uid", with: @sexual_orientation.uid
    click_on "Create Sexual orientation"

    assert_text "Sexual orientation was successfully created"
    click_on "Back"
  end

  test "updating a Sexual orientation" do
    visit sexual_orientations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sexual_orientation.name
    fill_in "Status", with: @sexual_orientation.status
    fill_in "Uid", with: @sexual_orientation.uid
    click_on "Update Sexual orientation"

    assert_text "Sexual orientation was successfully updated"
    click_on "Back"
  end

  test "destroying a Sexual orientation" do
    visit sexual_orientations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sexual orientation was successfully destroyed"
  end
end
