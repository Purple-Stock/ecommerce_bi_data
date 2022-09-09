require "application_system_test_case"

class WspedidosTest < ApplicationSystemTestCase
  setup do
    @wspedido = wspedidos(:one)
  end

  test "visiting the index" do
    visit wspedidos_url
    assert_selector "h1", text: "Wspedidos"
  end

  test "should create wspedido" do
    visit wspedidos_url
    click_on "New wspedido"

    click_on "Create Wspedido"

    assert_text "Wspedido was successfully created"
    click_on "Back"
  end

  test "should update Wspedido" do
    visit wspedido_url(@wspedido)
    click_on "Edit this wspedido", match: :first

    click_on "Update Wspedido"

    assert_text "Wspedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Wspedido" do
    visit wspedido_url(@wspedido)
    click_on "Destroy this wspedido", match: :first

    assert_text "Wspedido was successfully destroyed"
  end
end
