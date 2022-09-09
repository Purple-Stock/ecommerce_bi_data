require "test_helper"

class WspedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wspedido = wspedidos(:one)
  end

  test "should get index" do
    get wspedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_wspedido_url
    assert_response :success
  end

  test "should create wspedido" do
    assert_difference("Wspedido.count") do
      post wspedidos_url, params: { wspedido: {  } }
    end

    assert_redirected_to wspedido_url(Wspedido.last)
  end

  test "should show wspedido" do
    get wspedido_url(@wspedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_wspedido_url(@wspedido)
    assert_response :success
  end

  test "should update wspedido" do
    patch wspedido_url(@wspedido), params: { wspedido: {  } }
    assert_redirected_to wspedido_url(@wspedido)
  end

  test "should destroy wspedido" do
    assert_difference("Wspedido.count", -1) do
      delete wspedido_url(@wspedido)
    end

    assert_redirected_to wspedidos_url
  end
end
