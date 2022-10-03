class CreateShopeeIncomeFinisheds < ActiveRecord::Migration[7.0]
  def change
    create_table :shopee_income_finisheds do |t|
      t.string :id_pedido
      t.string :id_reembolso
      t.string :nome_usuario_comprador
      t.datetime :data_criacao_pedido
      t.string :metodo_pagamento_comprador
      t.datetime :data_conclusao_pagamento
      t.float :preco_original_produto
      t.float :promocao_seu_produto
      t.float :valor_reembolso_comprador
      t.float :desconto_produto_pela_shopee
      t.float :cupom
      t.float :cashback_moeda_absorvida_vendedor
      t.float :taxa_frete_paga_pelo_comprador
      t.float :desconto_frete_pela_shopee
      t.float :taxa_frete_real_paga_pela_Shopee
      t.float :reverse_shipping_Fee
      t.float :taxa_comissao
      t.float :taxa_servico
      t.float :taxa_transacao
      t.float :quantia_total_lancada
      t.string :codigo_cupom
      t.float :compensacao_perdida
      t.float :peso_total_real_por_pedido
      t.float :promocao_taxa_frete_pelo_vendedor
      t.string :shipping_provider
      t.string :nome_transportadora
      t.integer :account
      t.string :hash_id

      t.timestamps
    end
    add_index :shopee_income_finisheds, :hash_id, unique: true
  end
end
