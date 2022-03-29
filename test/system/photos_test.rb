require "application_system_test_case"

class PhotosTest < ApplicationSystemTestCase
  setup do
    @photo = photos(:one)
  end

  test "visiting the index" do
    visit photos_url
    assert_selector "h1", text: "Photos"
  end

  test "creating a Photo" do
    visit photos_url
    click_on "New Photo"

    fill_in "Aption", with: @photo.aption
    fill_in "Large source", with: @photo.large_source
    fill_in "Link", with: @photo.link
    fill_in "Medium source", with: @photo.medium_source
    fill_in "Photo album", with: @photo.photo_album_id
    fill_in "Small source", with: @photo.small_source
    fill_in "Status", with: @photo.status
    fill_in "Uid", with: @photo.uid
    fill_in "User", with: @photo.user_id
    click_on "Create Photo"

    assert_text "Photo was successfully created"
    click_on "Back"
  end

  test "updating a Photo" do
    visit photos_url
    click_on "Edit", match: :first

    fill_in "Aption", with: @photo.aption
    fill_in "Large source", with: @photo.large_source
    fill_in "Link", with: @photo.link
    fill_in "Medium source", with: @photo.medium_source
    fill_in "Photo album", with: @photo.photo_album_id
    fill_in "Small source", with: @photo.small_source
    fill_in "Status", with: @photo.status
    fill_in "Uid", with: @photo.uid
    fill_in "User", with: @photo.user_id
    click_on "Update Photo"

    assert_text "Photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo" do
    visit photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo was successfully destroyed"
  end
end
