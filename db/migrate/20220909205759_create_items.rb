class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :item_id
      t.string :pedido_id
      t.string :produto_id
      t.string :produto_estoque_id
      t.string :sku
      t.string :nome_produto
      t.string :slug_produto
      t.string :origem_mercadoria
      t.string :tempo_producao
      t.string :ncm
      t.string :combinacoes
      t.string :perguntas
      t.string :quantidade
      t.string :unidade_medida_id
      t.string :valor_unitario
      t.string :valor_total
      t.string :altura
      t.string :largura
      t.string :comprimento
      t.string :peso
      t.string :valor_frete_unitario
      t.string :valor_frete_adicional
      t.string :objeto_codigo_rastreamento
      t.string :descricao
      t.string :image
      t.string :presente
      t.string :total_presente
      t.string :desconto
      t.string :desconto_percentual
      t.string :url_rastreamento_item

      t.timestamps
    end
  end
end
