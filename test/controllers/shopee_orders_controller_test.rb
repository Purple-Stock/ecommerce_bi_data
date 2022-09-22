require "test_helper"

class ShopeeOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopee_order = shopee_orders(:one)
  end

  test "should get index" do
    get shopee_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_shopee_order_url
    assert_response :success
  end

  test "should create shopee_order" do
    assert_difference("ShopeeOrder.count") do
      post shopee_orders_url, params: { shopee_order: { bairro: @shopee_order.bairro, cancelar_motivo: @shopee_order.cancelar_motivo, cep: @shopee_order.cep, cidade: @shopee_order.cidade, cidade_1: @shopee_order.cidade_1, codigo_cupom: @shopee_order.codigo_cupom, compensar_moedas_shopee: @shopee_order.compensar_moedas_shopee, cpf_comprador: @shopee_order.cpf_comprador, cupom_shopee: @shopee_order.cupom_shopee, cupom_vendedor: @shopee_order.cupom_vendedor, data_criacao_pedido: @shopee_order.data_criacao_pedido, data_prevista_envio: @shopee_order.data_prevista_envio, desconto_frete_aproximado: @shopee_order.desconto_frete_aproximado, desconto_leve_mais_menos_vendedor: @shopee_order.desconto_leve_mais_menos_vendedor, desconto_shopee_leve_mais_menos: @shopee_order.desconto_shopee_leve_mais_menos, desconto_vendedor: @shopee_order.desconto_vendedor, desconto_vendedor_2: @shopee_order.desconto_vendedor_2, endereco_entrega: @shopee_order.endereco_entrega, hora_completa_pedido: @shopee_order.hora_completa_pedido, hora_pagamento_pedido: @shopee_order.hora_pagamento_pedido, id_pedido: @shopee_order.id_pedido, indicador_leve_mais_menos: @shopee_order.indicador_leve_mais_menos, metodo_envio: @shopee_order.metodo_envio, nome_destinatario: @shopee_order.nome_destinatario, nome_produto: @shopee_order.nome_produto, nome_usuário_comprador: @shopee_order.nome_usuário_comprador, nome_variacao: @shopee_order.nome_variacao, nota: @shopee_order.nota, numero_produtos_pedidos: @shopee_order.numero_produtos_pedidos, numero_rastreamento: @shopee_order.numero_rastreamento, numero_referencia_sku: @shopee_order.numero_referencia_sku, numero_referência_sku_principal: @shopee_order.numero_referência_sku_principal, observacao_comprador: @shopee_order.observacao_comprador, opcao_envio: @shopee_order.opcao_envio, pais: @shopee_order.pais, peso_total_pedido: @shopee_order.peso_total_pedido, peso_total_sku: @shopee_order.peso_total_sku, preco_acordado: @shopee_order.preco_acordado, preco_original: @shopee_order.preco_original, quantidade: @shopee_order.quantidade, reembolso_shopee: @shopee_order.reembolso_shopee, seller_absorbed_coin_cashback: @shopee_order.seller_absorbed_coin_cashback, status_devolucao_reembolso: @shopee_order.status_devolucao_reembolso, status_pedido: @shopee_order.status_pedido, subtotal_produto: @shopee_order.subtotal_produto, taxa_comissao: @shopee_order.taxa_comissao, taxa_envio_pagas_pelo_comprador: @shopee_order.taxa_envio_pagas_pelo_comprador, taxa_envio_reversa: @shopee_order.taxa_envio_reversa, taxa_servico: @shopee_order.taxa_servico, taxa_transacao: @shopee_order.taxa_transacao, telefone: @shopee_order.telefone, tempo_envio: @shopee_order.tempo_envio, total_descontado_cartao_credito: @shopee_order.total_descontado_cartao_credito, total_global: @shopee_order.total_global, uf: @shopee_order.uf, valor_estimado_frete: @shopee_order.valor_estimado_frete, valor_total: @shopee_order.valor_total } }
    end

    assert_redirected_to shopee_order_url(ShopeeOrder.last)
  end

  test "should show shopee_order" do
    get shopee_order_url(@shopee_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopee_order_url(@shopee_order)
    assert_response :success
  end

  test "should update shopee_order" do
    patch shopee_order_url(@shopee_order), params: { shopee_order: { bairro: @shopee_order.bairro, cancelar_motivo: @shopee_order.cancelar_motivo, cep: @shopee_order.cep, cidade: @shopee_order.cidade, cidade_1: @shopee_order.cidade_1, codigo_cupom: @shopee_order.codigo_cupom, compensar_moedas_shopee: @shopee_order.compensar_moedas_shopee, cpf_comprador: @shopee_order.cpf_comprador, cupom_shopee: @shopee_order.cupom_shopee, cupom_vendedor: @shopee_order.cupom_vendedor, data_criacao_pedido: @shopee_order.data_criacao_pedido, data_prevista_envio: @shopee_order.data_prevista_envio, desconto_frete_aproximado: @shopee_order.desconto_frete_aproximado, desconto_leve_mais_menos_vendedor: @shopee_order.desconto_leve_mais_menos_vendedor, desconto_shopee_leve_mais_menos: @shopee_order.desconto_shopee_leve_mais_menos, desconto_vendedor: @shopee_order.desconto_vendedor, desconto_vendedor_2: @shopee_order.desconto_vendedor_2, endereco_entrega: @shopee_order.endereco_entrega, hora_completa_pedido: @shopee_order.hora_completa_pedido, hora_pagamento_pedido: @shopee_order.hora_pagamento_pedido, id_pedido: @shopee_order.id_pedido, indicador_leve_mais_menos: @shopee_order.indicador_leve_mais_menos, metodo_envio: @shopee_order.metodo_envio, nome_destinatario: @shopee_order.nome_destinatario, nome_produto: @shopee_order.nome_produto, nome_usuário_comprador: @shopee_order.nome_usuário_comprador, nome_variacao: @shopee_order.nome_variacao, nota: @shopee_order.nota, numero_produtos_pedidos: @shopee_order.numero_produtos_pedidos, numero_rastreamento: @shopee_order.numero_rastreamento, numero_referencia_sku: @shopee_order.numero_referencia_sku, numero_referência_sku_principal: @shopee_order.numero_referência_sku_principal, observacao_comprador: @shopee_order.observacao_comprador, opcao_envio: @shopee_order.opcao_envio, pais: @shopee_order.pais, peso_total_pedido: @shopee_order.peso_total_pedido, peso_total_sku: @shopee_order.peso_total_sku, preco_acordado: @shopee_order.preco_acordado, preco_original: @shopee_order.preco_original, quantidade: @shopee_order.quantidade, reembolso_shopee: @shopee_order.reembolso_shopee, seller_absorbed_coin_cashback: @shopee_order.seller_absorbed_coin_cashback, status_devolucao_reembolso: @shopee_order.status_devolucao_reembolso, status_pedido: @shopee_order.status_pedido, subtotal_produto: @shopee_order.subtotal_produto, taxa_comissao: @shopee_order.taxa_comissao, taxa_envio_pagas_pelo_comprador: @shopee_order.taxa_envio_pagas_pelo_comprador, taxa_envio_reversa: @shopee_order.taxa_envio_reversa, taxa_servico: @shopee_order.taxa_servico, taxa_transacao: @shopee_order.taxa_transacao, telefone: @shopee_order.telefone, tempo_envio: @shopee_order.tempo_envio, total_descontado_cartao_credito: @shopee_order.total_descontado_cartao_credito, total_global: @shopee_order.total_global, uf: @shopee_order.uf, valor_estimado_frete: @shopee_order.valor_estimado_frete, valor_total: @shopee_order.valor_total } }
    assert_redirected_to shopee_order_url(@shopee_order)
  end

  test "should destroy shopee_order" do
    assert_difference("ShopeeOrder.count", -1) do
      delete shopee_order_url(@shopee_order)
    end

    assert_redirected_to shopee_orders_url
  end
end
