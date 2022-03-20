require "application_system_test_case"

class AstrologiesTest < ApplicationSystemTestCase
  setup do
    @astrology = astrologies(:one)
  end

  test "visiting the index" do
    visit astrologies_url
    assert_selector "h1", text: "Astrologies"
  end

  test "creating a Astrology" do
    visit astrologies_url
    click_on "New Astrology"

    fill_in "Name", with: @astrology.name
    fill_in "Status", with: @astrology.status
    fill_in "Uid", with: @astrology.uid
    click_on "Create Astrology"

    assert_text "Astrology was successfully created"
    click_on "Back"
  end

  test "updating a Astrology" do
    visit astrologies_url
    click_on "Edit", match: :first

    fill_in "Name", with: @astrology.name
    fill_in "Status", with: @astrology.status
    fill_in "Uid", with: @astrology.uid
    click_on "Update Astrology"

    assert_text "Astrology was successfully updated"
    click_on "Back"
  end

  test "destroying a Astrology" do
    visit astrologies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Astrology was successfully destroyed"
  end
end
