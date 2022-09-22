class CreateShopeeOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :shopee_orders do |t|
      t.string :id_pedido
      t.string :status_pedido
      t.string :cancelar_motivo
      t.string :status_devolucao_reembolso
      t.string :numero_rastreamento
      t.string :opcao_envio
      t.string :metodo_envio
      t.datetime :data_prevista_envio
      t.datetime :tempo_envio
      t.datetime :data_criacao_pedido
      t.datetime :hora_pagamento_pedido
      t.string :numero_referência_sku_principal
      t.string :nome_produto
      t.string :numero_referencia_sku
      t.string :nome_variacao
      t.float :preco_original
      t.float :preco_acordado
      t.integer :quantidade
      t.float :subtotal_produto
      t.float :desconto_vendedor
      t.float :desconto_vendedor_2
      t.float :reembolso_shopee
      t.float :peso_total_sku
      t.integer :numero_produtos_pedidos
      t.float :peso_total_pedido
      t.string :codigo_cupom
      t.float :cupom_vendedor
      t.float :seller_absorbed_coin_cashback
      t.string :cupom_shopee
      t.string :indicador_leve_mais_menos
      t.float :desconto_shopee_leve_mais_menos
      t.float :desconto_leve_mais_menos_vendedor
      t.integer :compensar_moedas_shopee
      t.float :total_descontado_cartao_credito
      t.float :valor_total
      t.float :taxa_envio_pagas_pelo_comprador
      t.float :desconto_frete_aproximado
      t.float :taxa_envio_reversa
      t.float :taxa_transacao
      t.float :taxa_comissao
      t.float :taxa_servico
      t.float :total_global
      t.float :valor_estimado_frete
      t.string :nome_usuário_comprador
      t.string :nome_destinatario
      t.string :telefone
      t.string :cpf_comprador
      t.string :endereco_entrega
      t.string :cidade_1
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :pais
      t.string :cep
      t.string :observacao_comprador
      t.datetime :hora_completa_pedido
      t.string :nota
      t.integer :account

      t.timestamps
    end
  end
end
