require "application_system_test_case"

class UnlikesTest < ApplicationSystemTestCase
  setup do
    @unlike = unlikes(:one)
  end

  test "visiting the index" do
    visit unlikes_url
    assert_selector "h1", text: "Unlikes"
  end

  test "creating a Unlike" do
    visit unlikes_url
    click_on "New Unlike"

    fill_in "Recipient", with: @unlike.recipient_id
    fill_in "Remove at", with: @unlike.remove_at
    fill_in "Sender", with: @unlike.sender_id
    fill_in "Uid", with: @unlike.uid
    click_on "Create Unlike"

    assert_text "Unlike was successfully created"
    click_on "Back"
  end

  test "updating a Unlike" do
    visit unlikes_url
    click_on "Edit", match: :first

    fill_in "Recipient", with: @unlike.recipient_id
    fill_in "Remove at", with: @unlike.remove_at
    fill_in "Sender", with: @unlike.sender_id
    fill_in "Uid", with: @unlike.uid
    click_on "Update Unlike"

    assert_text "Unlike was successfully updated"
    click_on "Back"
  end

  test "destroying a Unlike" do
    visit unlikes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unlike was successfully destroyed"
  end
end
