require "application_system_test_case"

class PhotoAlbumsTest < ApplicationSystemTestCase
  setup do
    @photo_album = photo_albums(:one)
  end

  test "visiting the index" do
    visit photo_albums_url
    assert_selector "h1", text: "Photo Albums"
  end

  test "creating a Photo album" do
    visit photo_albums_url
    click_on "New Photo Album"

    fill_in "Description", with: @photo_album.description
    fill_in "Size", with: @photo_album.size
    fill_in "Title", with: @photo_album.title
    fill_in "Uid", with: @photo_album.uid
    fill_in "User", with: @photo_album.user_id
    click_on "Create Photo album"

    assert_text "Photo album was successfully created"
    click_on "Back"
  end

  test "updating a Photo album" do
    visit photo_albums_url
    click_on "Edit", match: :first

    fill_in "Description", with: @photo_album.description
    fill_in "Size", with: @photo_album.size
    fill_in "Title", with: @photo_album.title
    fill_in "Uid", with: @photo_album.uid
    fill_in "User", with: @photo_album.user_id
    click_on "Update Photo album"

    assert_text "Photo album was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo album" do
    visit photo_albums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo album was successfully destroyed"
  end
end
