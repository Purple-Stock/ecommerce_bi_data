require "application_system_test_case"

class ShopeeIncomeFinishedsTest < ApplicationSystemTestCase
  setup do
    @shopee_income_finished = shopee_income_finisheds(:one)
  end

  test "visiting the index" do
    visit shopee_income_finisheds_url
    assert_selector "h1", text: "Shopee income finisheds"
  end

  test "should create shopee income finished" do
    visit shopee_income_finisheds_url
    click_on "New shopee income finished"

    fill_in "Account", with: @shopee_income_finished.account
    fill_in "Cashback moeda absorvida vendedor", with: @shopee_income_finished.cashback_moeda_absorvida_vendedor
    fill_in "Codigo cupom", with: @shopee_income_finished.codigo_cupom
    fill_in "Compensacao perdida", with: @shopee_income_finished.compensacao_perdida
    fill_in "Cupom", with: @shopee_income_finished.cupom
    fill_in "Data conclusao pagamento", with: @shopee_income_finished.data_conclusao_pagamento
    fill_in "Data criacao pedido", with: @shopee_income_finished.data_criacao_pedido
    fill_in "Desconto frete pela shopee", with: @shopee_income_finished.desconto_frete_pela_shopee
    fill_in "Desconto produto pela shopee", with: @shopee_income_finished.desconto_produto_pela_shopee
    fill_in "Hash", with: @shopee_income_finished.hash_id
    fill_in "Id pedido", with: @shopee_income_finished.id_pedido
    fill_in "Id reembolso", with: @shopee_income_finished.id_reembolso
    fill_in "Metodo pagamento comprador", with: @shopee_income_finished.metodo_pagamento_comprador
    fill_in "Nome transportadora", with: @shopee_income_finished.nome_transportadora
    fill_in "Nome usuario comprador", with: @shopee_income_finished.nome_usuario_comprador
    fill_in "Peso total real por pedido", with: @shopee_income_finished.peso_total_real_por_pedido
    fill_in "Preco original produto", with: @shopee_income_finished.preco_original_produto
    fill_in "Promocao seu produto", with: @shopee_income_finished.promocao_seu_produto
    fill_in "Promocao taxa frete pelo vendedor", with: @shopee_income_finished.promocao_taxa_frete_pelo_vendedor
    fill_in "Quantia total lancada", with: @shopee_income_finished.quantia_total_lancada
    fill_in "Reverse shipping fee", with: @shopee_income_finished.reverse_shipping_Fee
    fill_in "Shipping provider", with: @shopee_income_finished.shipping_provider
    fill_in "Taxa comissao", with: @shopee_income_finished.taxa_comissao
    fill_in "Taxa frete paga pelo comprador", with: @shopee_income_finished.taxa_frete_paga_pelo_comprador
    fill_in "Taxa frete real paga pela shopee", with: @shopee_income_finished.taxa_frete_real_paga_pela_Shopee
    fill_in "Taxa servico", with: @shopee_income_finished.taxa_servico
    fill_in "Taxa transacao", with: @shopee_income_finished.taxa_transacao
    fill_in "Valor reembolso comprador", with: @shopee_income_finished.valor_reembolso_comprador
    click_on "Create Shopee income finished"

    assert_text "Shopee income finished was successfully created"
    click_on "Back"
  end

  test "should update Shopee income finished" do
    visit shopee_income_finished_url(@shopee_income_finished)
    click_on "Edit this shopee income finished", match: :first

    fill_in "Account", with: @shopee_income_finished.account
    fill_in "Cashback moeda absorvida vendedor", with: @shopee_income_finished.cashback_moeda_absorvida_vendedor
    fill_in "Codigo cupom", with: @shopee_income_finished.codigo_cupom
    fill_in "Compensacao perdida", with: @shopee_income_finished.compensacao_perdida
    fill_in "Cupom", with: @shopee_income_finished.cupom
    fill_in "Data conclusao pagamento", with: @shopee_income_finished.data_conclusao_pagamento
    fill_in "Data criacao pedido", with: @shopee_income_finished.data_criacao_pedido
    fill_in "Desconto frete pela shopee", with: @shopee_income_finished.desconto_frete_pela_shopee
    fill_in "Desconto produto pela shopee", with: @shopee_income_finished.desconto_produto_pela_shopee
    fill_in "Hash", with: @shopee_income_finished.hash_id
    fill_in "Id pedido", with: @shopee_income_finished.id_pedido
    fill_in "Id reembolso", with: @shopee_income_finished.id_reembolso
    fill_in "Metodo pagamento comprador", with: @shopee_income_finished.metodo_pagamento_comprador
    fill_in "Nome transportadora", with: @shopee_income_finished.nome_transportadora
    fill_in "Nome usuario comprador", with: @shopee_income_finished.nome_usuario_comprador
    fill_in "Peso total real por pedido", with: @shopee_income_finished.peso_total_real_por_pedido
    fill_in "Preco original produto", with: @shopee_income_finished.preco_original_produto
    fill_in "Promocao seu produto", with: @shopee_income_finished.promocao_seu_produto
    fill_in "Promocao taxa frete pelo vendedor", with: @shopee_income_finished.promocao_taxa_frete_pelo_vendedor
    fill_in "Quantia total lancada", with: @shopee_income_finished.quantia_total_lancada
    fill_in "Reverse shipping fee", with: @shopee_income_finished.reverse_shipping_Fee
    fill_in "Shipping provider", with: @shopee_income_finished.shipping_provider
    fill_in "Taxa comissao", with: @shopee_income_finished.taxa_comissao
    fill_in "Taxa frete paga pelo comprador", with: @shopee_income_finished.taxa_frete_paga_pelo_comprador
    fill_in "Taxa frete real paga pela shopee", with: @shopee_income_finished.taxa_frete_real_paga_pela_Shopee
    fill_in "Taxa servico", with: @shopee_income_finished.taxa_servico
    fill_in "Taxa transacao", with: @shopee_income_finished.taxa_transacao
    fill_in "Valor reembolso comprador", with: @shopee_income_finished.valor_reembolso_comprador
    click_on "Update Shopee income finished"

    assert_text "Shopee income finished was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopee income finished" do
    visit shopee_income_finished_url(@shopee_income_finished)
    click_on "Destroy this shopee income finished", match: :first

    assert_text "Shopee income finished was successfully destroyed"
  end
end
