require "application_system_test_case"

class ShopeePaysTest < ApplicationSystemTestCase
  setup do
    @shopee_pay = shopee_pays(:one)
  end

  test "visiting the index" do
    visit shopee_pays_url
    assert_selector "h1", text: "Shopee pays"
  end

  test "should create shopee pay" do
    visit shopee_pays_url
    click_on "New shopee pay"

    fill_in "Account", with: @shopee_pay.account
    fill_in "Beneficiario", with: @shopee_pay.beneficiario
    fill_in "Data", with: @shopee_pay.data
    fill_in "Descricao", with: @shopee_pay.descricao
    fill_in "Pagamento", with: @shopee_pay.pagamento
    fill_in "Saldo carteira", with: @shopee_pay.saldo_carteira
    fill_in "Status", with: @shopee_pay.status
    click_on "Create Shopee pay"

    assert_text "Shopee pay was successfully created"
    click_on "Back"
  end

  test "should update Shopee pay" do
    visit shopee_pay_url(@shopee_pay)
    click_on "Edit this shopee pay", match: :first

    fill_in "Account", with: @shopee_pay.account
    fill_in "Beneficiario", with: @shopee_pay.beneficiario
    fill_in "Data", with: @shopee_pay.data
    fill_in "Descricao", with: @shopee_pay.descricao
    fill_in "Pagamento", with: @shopee_pay.pagamento
    fill_in "Saldo carteira", with: @shopee_pay.saldo_carteira
    fill_in "Status", with: @shopee_pay.status
    click_on "Update Shopee pay"

    assert_text "Shopee pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopee pay" do
    visit shopee_pay_url(@shopee_pay)
    click_on "Destroy this shopee pay", match: :first

    assert_text "Shopee pay was successfully destroyed"
  end
end
