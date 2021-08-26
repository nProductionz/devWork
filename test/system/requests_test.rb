require "application_system_test_case"

class RequestsTest < ApplicationSystemTestCase
  setup do
    @request = requests(:one)
  end

  test "visiting the index" do
    visit requests_url
    assert_selector "h1", text: "Requests"
  end

  test "creating a Request" do
    visit requests_url
    click_on "New Request"

    fill_in "Description", with: @request.description
    fill_in "Genre", with: @request.genre
    fill_in "Reference", with: @request.reference
    fill_in "Requester", with: @request.requester_id
    fill_in "Tag1", with: @request.tag1
    fill_in "Tag2", with: @request.tag2
    fill_in "Tag3", with: @request.tag3
    fill_in "Title", with: @request.title
    click_on "Create Request"

    assert_text "Request was successfully created"
    click_on "Back"
  end

  test "updating a Request" do
    visit requests_url
    click_on "Edit", match: :first

    fill_in "Description", with: @request.description
    fill_in "Genre", with: @request.genre
    fill_in "Reference", with: @request.reference
    fill_in "Requester", with: @request.requester_id
    fill_in "Tag1", with: @request.tag1
    fill_in "Tag2", with: @request.tag2
    fill_in "Tag3", with: @request.tag3
    fill_in "Title", with: @request.title
    click_on "Update Request"

    assert_text "Request was successfully updated"
    click_on "Back"
  end

  test "destroying a Request" do
    visit requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request was successfully destroyed"
  end
end
