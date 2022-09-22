require "application_system_test_case"

class ShopeeOrdersTest < ApplicationSystemTestCase
  setup do
    @shopee_order = shopee_orders(:one)
  end

  test "visiting the index" do
    visit shopee_orders_url
    assert_selector "h1", text: "Shopee orders"
  end

  test "should create shopee order" do
    visit shopee_orders_url
    click_on "New shopee order"

    fill_in "Bairro", with: @shopee_order.bairro
    fill_in "Cancelar motivo", with: @shopee_order.cancelar_motivo
    fill_in "Cep", with: @shopee_order.cep
    fill_in "Cidade", with: @shopee_order.cidade
    fill_in "Cidade 1", with: @shopee_order.cidade_1
    fill_in "Codigo cupom", with: @shopee_order.codigo_cupom
    fill_in "Compensar moedas shopee", with: @shopee_order.compensar_moedas_shopee
    fill_in "Cpf comprador", with: @shopee_order.cpf_comprador
    fill_in "Cupom shopee", with: @shopee_order.cupom_shopee
    fill_in "Cupom vendedor", with: @shopee_order.cupom_vendedor
    fill_in "Data criacao pedido", with: @shopee_order.data_criacao_pedido
    fill_in "Data prevista envio", with: @shopee_order.data_prevista_envio
    fill_in "Desconto frete aproximado", with: @shopee_order.desconto_frete_aproximado
    fill_in "Desconto leve mais menos vendedor", with: @shopee_order.desconto_leve_mais_menos_vendedor
    fill_in "Desconto shopee leve mais menos", with: @shopee_order.desconto_shopee_leve_mais_menos
    fill_in "Desconto vendedor", with: @shopee_order.desconto_vendedor
    fill_in "Desconto vendedor 2", with: @shopee_order.desconto_vendedor_2
    fill_in "Endereco entrega", with: @shopee_order.endereco_entrega
    fill_in "Hora completa pedido", with: @shopee_order.hora_completa_pedido
    fill_in "Hora pagamento pedido", with: @shopee_order.hora_pagamento_pedido
    fill_in "Id pedido", with: @shopee_order.id_pedido
    fill_in "Indicador leve mais menos", with: @shopee_order.indicador_leve_mais_menos
    fill_in "Metodo envio", with: @shopee_order.metodo_envio
    fill_in "Nome destinatario", with: @shopee_order.nome_destinatario
    fill_in "Nome produto", with: @shopee_order.nome_produto
    fill_in "Nome usuário comprador", with: @shopee_order.nome_usuário_comprador
    fill_in "Nome variacao", with: @shopee_order.nome_variacao
    fill_in "Nota", with: @shopee_order.nota
    fill_in "Numero produtos pedidos", with: @shopee_order.numero_produtos_pedidos
    fill_in "Numero rastreamento", with: @shopee_order.numero_rastreamento
    fill_in "Numero referencia sku", with: @shopee_order.numero_referencia_sku
    fill_in "Numero referência sku principal", with: @shopee_order.numero_referência_sku_principal
    fill_in "Observacao comprador", with: @shopee_order.observacao_comprador
    fill_in "Opcao envio", with: @shopee_order.opcao_envio
    fill_in "Pais", with: @shopee_order.pais
    fill_in "Peso total pedido", with: @shopee_order.peso_total_pedido
    fill_in "Peso total sku", with: @shopee_order.peso_total_sku
    fill_in "Preco acordado", with: @shopee_order.preco_acordado
    fill_in "Preco original", with: @shopee_order.preco_original
    fill_in "Quantidade", with: @shopee_order.quantidade
    fill_in "Reembolso shopee", with: @shopee_order.reembolso_shopee
    fill_in "Seller absorbed coin cashback", with: @shopee_order.seller_absorbed_coin_cashback
    fill_in "Status devolucao reembolso", with: @shopee_order.status_devolucao_reembolso
    fill_in "Status pedido", with: @shopee_order.status_pedido
    fill_in "Subtotal produto", with: @shopee_order.subtotal_produto
    fill_in "Taxa comissao", with: @shopee_order.taxa_comissao
    fill_in "Taxa envio pagas pelo comprador", with: @shopee_order.taxa_envio_pagas_pelo_comprador
    fill_in "Taxa envio reversa", with: @shopee_order.taxa_envio_reversa
    fill_in "Taxa servico", with: @shopee_order.taxa_servico
    fill_in "Taxa transacao", with: @shopee_order.taxa_transacao
    fill_in "Telefone", with: @shopee_order.telefone
    fill_in "Tempo envio", with: @shopee_order.tempo_envio
    fill_in "Total descontado cartao credito", with: @shopee_order.total_descontado_cartao_credito
    fill_in "Total global", with: @shopee_order.total_global
    fill_in "Uf", with: @shopee_order.uf
    fill_in "Valor estimado frete", with: @shopee_order.valor_estimado_frete
    fill_in "Valor total", with: @shopee_order.valor_total
    click_on "Create Shopee order"

    assert_text "Shopee order was successfully created"
    click_on "Back"
  end

  test "should update Shopee order" do
    visit shopee_order_url(@shopee_order)
    click_on "Edit this shopee order", match: :first

    fill_in "Bairro", with: @shopee_order.bairro
    fill_in "Cancelar motivo", with: @shopee_order.cancelar_motivo
    fill_in "Cep", with: @shopee_order.cep
    fill_in "Cidade", with: @shopee_order.cidade
    fill_in "Cidade 1", with: @shopee_order.cidade_1
    fill_in "Codigo cupom", with: @shopee_order.codigo_cupom
    fill_in "Compensar moedas shopee", with: @shopee_order.compensar_moedas_shopee
    fill_in "Cpf comprador", with: @shopee_order.cpf_comprador
    fill_in "Cupom shopee", with: @shopee_order.cupom_shopee
    fill_in "Cupom vendedor", with: @shopee_order.cupom_vendedor
    fill_in "Data criacao pedido", with: @shopee_order.data_criacao_pedido
    fill_in "Data prevista envio", with: @shopee_order.data_prevista_envio
    fill_in "Desconto frete aproximado", with: @shopee_order.desconto_frete_aproximado
    fill_in "Desconto leve mais menos vendedor", with: @shopee_order.desconto_leve_mais_menos_vendedor
    fill_in "Desconto shopee leve mais menos", with: @shopee_order.desconto_shopee_leve_mais_menos
    fill_in "Desconto vendedor", with: @shopee_order.desconto_vendedor
    fill_in "Desconto vendedor 2", with: @shopee_order.desconto_vendedor_2
    fill_in "Endereco entrega", with: @shopee_order.endereco_entrega
    fill_in "Hora completa pedido", with: @shopee_order.hora_completa_pedido
    fill_in "Hora pagamento pedido", with: @shopee_order.hora_pagamento_pedido
    fill_in "Id pedido", with: @shopee_order.id_pedido
    fill_in "Indicador leve mais menos", with: @shopee_order.indicador_leve_mais_menos
    fill_in "Metodo envio", with: @shopee_order.metodo_envio
    fill_in "Nome destinatario", with: @shopee_order.nome_destinatario
    fill_in "Nome produto", with: @shopee_order.nome_produto
    fill_in "Nome usuário comprador", with: @shopee_order.nome_usuário_comprador
    fill_in "Nome variacao", with: @shopee_order.nome_variacao
    fill_in "Nota", with: @shopee_order.nota
    fill_in "Numero produtos pedidos", with: @shopee_order.numero_produtos_pedidos
    fill_in "Numero rastreamento", with: @shopee_order.numero_rastreamento
    fill_in "Numero referencia sku", with: @shopee_order.numero_referencia_sku
    fill_in "Numero referência sku principal", with: @shopee_order.numero_referência_sku_principal
    fill_in "Observacao comprador", with: @shopee_order.observacao_comprador
    fill_in "Opcao envio", with: @shopee_order.opcao_envio
    fill_in "Pais", with: @shopee_order.pais
    fill_in "Peso total pedido", with: @shopee_order.peso_total_pedido
    fill_in "Peso total sku", with: @shopee_order.peso_total_sku
    fill_in "Preco acordado", with: @shopee_order.preco_acordado
    fill_in "Preco original", with: @shopee_order.preco_original
    fill_in "Quantidade", with: @shopee_order.quantidade
    fill_in "Reembolso shopee", with: @shopee_order.reembolso_shopee
    fill_in "Seller absorbed coin cashback", with: @shopee_order.seller_absorbed_coin_cashback
    fill_in "Status devolucao reembolso", with: @shopee_order.status_devolucao_reembolso
    fill_in "Status pedido", with: @shopee_order.status_pedido
    fill_in "Subtotal produto", with: @shopee_order.subtotal_produto
    fill_in "Taxa comissao", with: @shopee_order.taxa_comissao
    fill_in "Taxa envio pagas pelo comprador", with: @shopee_order.taxa_envio_pagas_pelo_comprador
    fill_in "Taxa envio reversa", with: @shopee_order.taxa_envio_reversa
    fill_in "Taxa servico", with: @shopee_order.taxa_servico
    fill_in "Taxa transacao", with: @shopee_order.taxa_transacao
    fill_in "Telefone", with: @shopee_order.telefone
    fill_in "Tempo envio", with: @shopee_order.tempo_envio
    fill_in "Total descontado cartao credito", with: @shopee_order.total_descontado_cartao_credito
    fill_in "Total global", with: @shopee_order.total_global
    fill_in "Uf", with: @shopee_order.uf
    fill_in "Valor estimado frete", with: @shopee_order.valor_estimado_frete
    fill_in "Valor total", with: @shopee_order.valor_total
    click_on "Update Shopee order"

    assert_text "Shopee order was successfully updated"
    click_on "Back"
  end

  test "should destroy Shopee order" do
    visit shopee_order_url(@shopee_order)
    click_on "Destroy this shopee order", match: :first

    assert_text "Shopee order was successfully destroyed"
  end
end
