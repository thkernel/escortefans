require "application_system_test_case"

class WorkingHoursTest < ApplicationSystemTestCase
  setup do
    @working_hour = working_hours(:one)
  end

  test "visiting the index" do
    visit working_hours_url
    assert_selector "h1", text: "Working Hours"
  end

  test "creating a Working hour" do
    visit working_hours_url
    click_on "New Working Hour"

    fill_in "Day", with: @working_hour.day
    fill_in "End hour", with: @working_hour.end_hour
    fill_in "Start hour", with: @working_hour.start_hour
    fill_in "Status", with: @working_hour.status
    fill_in "Uid", with: @working_hour.uid
    fill_in "User", with: @working_hour.user_id
    click_on "Create Working hour"

    assert_text "Working hour was successfully created"
    click_on "Back"
  end

  test "updating a Working hour" do
    visit working_hours_url
    click_on "Edit", match: :first

    fill_in "Day", with: @working_hour.day
    fill_in "End hour", with: @working_hour.end_hour
    fill_in "Start hour", with: @working_hour.start_hour
    fill_in "Status", with: @working_hour.status
    fill_in "Uid", with: @working_hour.uid
    fill_in "User", with: @working_hour.user_id
    click_on "Update Working hour"

    assert_text "Working hour was successfully updated"
    click_on "Back"
  end

  test "destroying a Working hour" do
    visit working_hours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Working hour was successfully destroyed"
  end
end
