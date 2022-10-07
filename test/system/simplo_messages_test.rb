require "application_system_test_case"

class SimploMessagesTest < ApplicationSystemTestCase
  setup do
    @simplo_message = simplo_messages(:one)
  end

  test "visiting the index" do
    visit simplo_messages_url
    assert_selector "h1", text: "Simplo messages"
  end

  test "should create simplo message" do
    visit simplo_messages_url
    click_on "New simplo message"

    fill_in "Message", with: @simplo_message.message
    fill_in "Status code", with: @simplo_message.status_code
    click_on "Create Simplo message"

    assert_text "Simplo message was successfully created"
    click_on "Back"
  end

  test "should update Simplo message" do
    visit simplo_message_url(@simplo_message)
    click_on "Edit this simplo message", match: :first

    fill_in "Message", with: @simplo_message.message
    fill_in "Status code", with: @simplo_message.status_code
    click_on "Update Simplo message"

    assert_text "Simplo message was successfully updated"
    click_on "Back"
  end

  test "should destroy Simplo message" do
    visit simplo_message_url(@simplo_message)
    click_on "Destroy this simplo message", match: :first

    assert_text "Simplo message was successfully destroyed"
  end
end
