require "test_helper"

class ShopeeIncomeFinishedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopee_income_finished = shopee_income_finisheds(:one)
  end

  test "should get index" do
    get shopee_income_finisheds_url
    assert_response :success
  end

  test "should get new" do
    get new_shopee_income_finished_url
    assert_response :success
  end

  test "should create shopee_income_finished" do
    assert_difference("ShopeeIncomeFinished.count") do
      post shopee_income_finisheds_url, params: { shopee_income_finished: { account: @shopee_income_finished.account, cashback_moeda_absorvida_vendedor: @shopee_income_finished.cashback_moeda_absorvida_vendedor, codigo_cupom: @shopee_income_finished.codigo_cupom, compensacao_perdida: @shopee_income_finished.compensacao_perdida, cupom: @shopee_income_finished.cupom, data_conclusao_pagamento: @shopee_income_finished.data_conclusao_pagamento, data_criacao_pedido: @shopee_income_finished.data_criacao_pedido, desconto_frete_pela_shopee: @shopee_income_finished.desconto_frete_pela_shopee, desconto_produto_pela_shopee: @shopee_income_finished.desconto_produto_pela_shopee, hash_id: @shopee_income_finished.hash_id, id_pedido: @shopee_income_finished.id_pedido, id_reembolso: @shopee_income_finished.id_reembolso, metodo_pagamento_comprador: @shopee_income_finished.metodo_pagamento_comprador, nome_transportadora: @shopee_income_finished.nome_transportadora, nome_usuario_comprador: @shopee_income_finished.nome_usuario_comprador, peso_total_real_por_pedido: @shopee_income_finished.peso_total_real_por_pedido, preco_original_produto: @shopee_income_finished.preco_original_produto, promocao_seu_produto: @shopee_income_finished.promocao_seu_produto, promocao_taxa_frete_pelo_vendedor: @shopee_income_finished.promocao_taxa_frete_pelo_vendedor, quantia_total_lancada: @shopee_income_finished.quantia_total_lancada, reverse_shipping_Fee: @shopee_income_finished.reverse_shipping_Fee, shipping_provider: @shopee_income_finished.shipping_provider, taxa_comissao: @shopee_income_finished.taxa_comissao, taxa_frete_paga_pelo_comprador: @shopee_income_finished.taxa_frete_paga_pelo_comprador, taxa_frete_real_paga_pela_Shopee: @shopee_income_finished.taxa_frete_real_paga_pela_Shopee, taxa_servico: @shopee_income_finished.taxa_servico, taxa_transacao: @shopee_income_finished.taxa_transacao, valor_reembolso_comprador: @shopee_income_finished.valor_reembolso_comprador } }
    end

    assert_redirected_to shopee_income_finished_url(ShopeeIncomeFinished.last)
  end

  test "should show shopee_income_finished" do
    get shopee_income_finished_url(@shopee_income_finished)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopee_income_finished_url(@shopee_income_finished)
    assert_response :success
  end

  test "should update shopee_income_finished" do
    patch shopee_income_finished_url(@shopee_income_finished), params: { shopee_income_finished: { account: @shopee_income_finished.account, cashback_moeda_absorvida_vendedor: @shopee_income_finished.cashback_moeda_absorvida_vendedor, codigo_cupom: @shopee_income_finished.codigo_cupom, compensacao_perdida: @shopee_income_finished.compensacao_perdida, cupom: @shopee_income_finished.cupom, data_conclusao_pagamento: @shopee_income_finished.data_conclusao_pagamento, data_criacao_pedido: @shopee_income_finished.data_criacao_pedido, desconto_frete_pela_shopee: @shopee_income_finished.desconto_frete_pela_shopee, desconto_produto_pela_shopee: @shopee_income_finished.desconto_produto_pela_shopee, hash_id: @shopee_income_finished.hash_id, id_pedido: @shopee_income_finished.id_pedido, id_reembolso: @shopee_income_finished.id_reembolso, metodo_pagamento_comprador: @shopee_income_finished.metodo_pagamento_comprador, nome_transportadora: @shopee_income_finished.nome_transportadora, nome_usuario_comprador: @shopee_income_finished.nome_usuario_comprador, peso_total_real_por_pedido: @shopee_income_finished.peso_total_real_por_pedido, preco_original_produto: @shopee_income_finished.preco_original_produto, promocao_seu_produto: @shopee_income_finished.promocao_seu_produto, promocao_taxa_frete_pelo_vendedor: @shopee_income_finished.promocao_taxa_frete_pelo_vendedor, quantia_total_lancada: @shopee_income_finished.quantia_total_lancada, reverse_shipping_Fee: @shopee_income_finished.reverse_shipping_Fee, shipping_provider: @shopee_income_finished.shipping_provider, taxa_comissao: @shopee_income_finished.taxa_comissao, taxa_frete_paga_pelo_comprador: @shopee_income_finished.taxa_frete_paga_pelo_comprador, taxa_frete_real_paga_pela_Shopee: @shopee_income_finished.taxa_frete_real_paga_pela_Shopee, taxa_servico: @shopee_income_finished.taxa_servico, taxa_transacao: @shopee_income_finished.taxa_transacao, valor_reembolso_comprador: @shopee_income_finished.valor_reembolso_comprador } }
    assert_redirected_to shopee_income_finished_url(@shopee_income_finished)
  end

  test "should destroy shopee_income_finished" do
    assert_difference("ShopeeIncomeFinished.count", -1) do
      delete shopee_income_finished_url(@shopee_income_finished)
    end

    assert_redirected_to shopee_income_finisheds_url
  end
end
