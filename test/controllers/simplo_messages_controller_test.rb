require "test_helper"

class SimploMessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simplo_message = simplo_messages(:one)
  end

  test "should get index" do
    get simplo_messages_url
    assert_response :success
  end

  test "should get new" do
    get new_simplo_message_url
    assert_response :success
  end

  test "should create simplo_message" do
    assert_difference("SimploMessage.count") do
      post simplo_messages_url, params: { simplo_message: { message: @simplo_message.message, status_code: @simplo_message.status_code } }
    end

    assert_redirected_to simplo_message_url(SimploMessage.last)
  end

  test "should show simplo_message" do
    get simplo_message_url(@simplo_message)
    assert_response :success
  end

  test "should get edit" do
    get edit_simplo_message_url(@simplo_message)
    assert_response :success
  end

  test "should update simplo_message" do
    patch simplo_message_url(@simplo_message), params: { simplo_message: { message: @simplo_message.message, status_code: @simplo_message.status_code } }
    assert_redirected_to simplo_message_url(@simplo_message)
  end

  test "should destroy simplo_message" do
    assert_difference("SimploMessage.count", -1) do
      delete simplo_message_url(@simplo_message)
    end

    assert_redirected_to simplo_messages_url
  end
end
