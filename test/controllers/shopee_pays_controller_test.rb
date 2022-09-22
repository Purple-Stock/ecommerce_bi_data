require "test_helper"

class ShopeePaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopee_pay = shopee_pays(:one)
  end

  test "should get index" do
    get shopee_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_shopee_pay_url
    assert_response :success
  end

  test "should create shopee_pay" do
    assert_difference("ShopeePay.count") do
      post shopee_pays_url, params: { shopee_pay: { account: @shopee_pay.account, beneficiario: @shopee_pay.beneficiario, data: @shopee_pay.data, descricao: @shopee_pay.descricao, pagamento: @shopee_pay.pagamento, saldo_carteira: @shopee_pay.saldo_carteira, status: @shopee_pay.status } }
    end

    assert_redirected_to shopee_pay_url(ShopeePay.last)
  end

  test "should show shopee_pay" do
    get shopee_pay_url(@shopee_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopee_pay_url(@shopee_pay)
    assert_response :success
  end

  test "should update shopee_pay" do
    patch shopee_pay_url(@shopee_pay), params: { shopee_pay: { account: @shopee_pay.account, beneficiario: @shopee_pay.beneficiario, data: @shopee_pay.data, descricao: @shopee_pay.descricao, pagamento: @shopee_pay.pagamento, saldo_carteira: @shopee_pay.saldo_carteira, status: @shopee_pay.status } }
    assert_redirected_to shopee_pay_url(@shopee_pay)
  end

  test "should destroy shopee_pay" do
    assert_difference("ShopeePay.count", -1) do
      delete shopee_pay_url(@shopee_pay)
    end

    assert_redirected_to shopee_pays_url
  end
end
