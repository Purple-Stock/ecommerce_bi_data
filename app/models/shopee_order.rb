class ShopeeOrder < ApplicationRecord
  enum account: %i[Shopee_1 Shopee_2]

  def self.save_csv(file_path, account)
    csv_text = File.read(Rails.root.join('lib', 'csvs', file_path))
    csv = CSV.parse(csv_text, headers: true, encoding: 'UTF-8')
    csv.each do |row|
      shopee_order = ShopeeOrder.new
      shopee_order.id_pedido = row['ID do pedido']
      shopee_order.status_pedido = row['Status do pedido']
      shopee_order.cancelar_motivo = row['Cancelar Motivo']
      shopee_order.status_devolucao_reembolso = row['Status da Devolução / Reembolso']
      shopee_order.numero_rastreamento = row['Número de rastreamento']
      shopee_order.opcao_envio = row['Opção de envio']
      shopee_order.metodo_envio = row['Método de envio']
      if row['Data prevista de envio'].present?
        shopee_order.data_prevista_envio = DateTime.parse(row['Data prevista de envio'])
      end
      shopee_order.tempo_envio = DateTime.parse(row['Tempo de Envio']) if row['Tempo de Envio'].present?
      if row['Data de criação do pedido'].present?
        shopee_order.data_criacao_pedido = DateTime.parse(row['Data de criação do pedido'])
      end
      # shopee_order.hora_pagamento_pedido = DateTime.parse(row["Hora do pagamento do pedido"]) if row["Hora do pagamento do pedido"].present? || row["Hora do pagamento do pedido"].delete('-').blank?
      shopee_order.numero_referência_sku_principal = row['Nº de referência do SKU principal']
      shopee_order.nome_produto = row['Nome do Produto']
      shopee_order.numero_referencia_sku = row['Número de referência SKU']
      shopee_order.nome_variacao = row['Nome da variação']
      shopee_order.preco_original = row['Preço original']
      shopee_order.preco_acordado = row['Preço acordado']
      shopee_order.quantidade = row['Quantidade']
      shopee_order.subtotal_produto = row['Subtotal do produto']
      shopee_order.desconto_vendedor = row['Desconto do vendedor']
      shopee_order.desconto_vendedor = row['Desconto do vendedor']
      shopee_order.reembolso_shopee = row['Reembolso Shopee']
      shopee_order.peso_total_sku = row['Peso total SKU']
      shopee_order.numero_produtos_pedidos = row['Número de produtos pedidos']
      shopee_order.peso_total_pedido = row['Peso total do pedido']
      shopee_order.codigo_cupom = row['Código do Cupom']
      shopee_order.cupom_vendedor = row['Cupom do vendedor']
      shopee_order.seller_absorbed_coin_cashback = row['Seller Absorbed Coin Cashback']
      shopee_order.cupom_shopee = row['Cupom Shopee']
      shopee_order.indicador_leve_mais_menos = row['Indicador da Leve Mais por Menos']
      shopee_order.desconto_shopee_leve_mais_menos = row['Desconto Shopee da Leve Mais por Menos']
      shopee_order.desconto_leve_mais_menos_vendedor = row['Desconto da Leve Mais por Menos do vendedor']
      shopee_order.compensar_moedas_shopee = row['Compensar Moedas Shopee']
      shopee_order.total_descontado_cartao_credito = row['Total descontado Cartão de Crédito']
      shopee_order.valor_total = row['Valor Total']
      shopee_order.taxa_envio_pagas_pelo_comprador = row['Taxa de envio pagas pelo comprador']
      shopee_order.desconto_frete_aproximado = row['Desconto de Frete Aproximado']
      shopee_order.taxa_envio_reversa = row['Taxa de Envio Reversa']
      shopee_order.taxa_transacao = row['Taxa de transação']
      shopee_order.taxa_comissao = row['Taxa de comissão']
      shopee_order.taxa_servico = row['Taxa de serviço']
      shopee_order.total_global = row['Total global']
      shopee_order.valor_estimado_frete = row['Valor estimado do frete']
      shopee_order.nome_usuário_comprador = row['Nome de usuário (comprador)']
      shopee_order.nome_destinatario = row['Nome do destinatário']
      shopee_order.telefone = row['Telefone']
      shopee_order.cpf_comprador = row['CPF do Comprador']
      shopee_order.endereco_entrega = row['Endereço de entrega']
      shopee_order.cidade = row['Cidade']
      shopee_order.bairro = row['Bairro']
      shopee_order.cidade = row['Cidade']
      shopee_order.uf = row['UF']
      shopee_order.pais = row['País']
      shopee_order.cep = row['CEP']
      shopee_order.observacao_comprador = row['Observação do comprador']
      if row['Hora completa do pedido'].present?
        shopee_order.hora_completa_pedido = DateTime.parse(row['Hora completa do pedido'])
      end
      shopee_order.nota = row['Nota']
      shopee_order.account = account

      shopee_order.save
    end
  end
end
