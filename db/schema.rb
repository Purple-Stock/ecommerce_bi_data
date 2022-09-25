# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_25_140755) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blazer_audits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "query_id"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at"
    t.index ["query_id"], name: "index_blazer_audits_on_query_id"
    t.index ["user_id"], name: "index_blazer_audits_on_user_id"
  end

  create_table "blazer_checks", force: :cascade do |t|
    t.bigint "creator_id"
    t.bigint "query_id"
    t.string "state"
    t.string "schedule"
    t.text "emails"
    t.text "slack_channels"
    t.string "check_type"
    t.text "message"
    t.datetime "last_run_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_checks_on_creator_id"
    t.index ["query_id"], name: "index_blazer_checks_on_query_id"
  end

  create_table "blazer_dashboard_queries", force: :cascade do |t|
    t.bigint "dashboard_id"
    t.bigint "query_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_blazer_dashboard_queries_on_dashboard_id"
    t.index ["query_id"], name: "index_blazer_dashboard_queries_on_query_id"
  end

  create_table "blazer_dashboards", force: :cascade do |t|
    t.bigint "creator_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_dashboards_on_creator_id"
  end

  create_table "blazer_queries", force: :cascade do |t|
    t.bigint "creator_id"
    t.string "name"
    t.text "description"
    t.text "statement"
    t.string "data_source"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_queries_on_creator_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_id"
    t.string "pedido_id"
    t.string "produto_id"
    t.string "produto_estoque_id"
    t.string "sku"
    t.string "nome_produto"
    t.string "slug_produto"
    t.string "origem_mercadoria"
    t.string "tempo_producao"
    t.string "ncm"
    t.string "combinacoes"
    t.string "perguntas"
    t.string "quantidade"
    t.string "unidade_medida_id"
    t.string "valor_unitario"
    t.string "valor_total"
    t.string "altura"
    t.string "largura"
    t.string "comprimento"
    t.string "peso"
    t.string "valor_frete_unitario"
    t.string "valor_frete_adicional"
    t.string "objeto_codigo_rastreamento"
    t.string "descricao"
    t.string "image"
    t.string "presente"
    t.string "total_presente"
    t.string "desconto"
    t.string "desconto_percentual"
    t.string "url_rastreamento_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopee_orders", force: :cascade do |t|
    t.string "id_pedido"
    t.string "status_pedido"
    t.string "cancelar_motivo"
    t.string "status_devolucao_reembolso"
    t.string "numero_rastreamento"
    t.string "opcao_envio"
    t.string "metodo_envio"
    t.datetime "data_prevista_envio"
    t.datetime "tempo_envio"
    t.datetime "data_criacao_pedido"
    t.datetime "hora_pagamento_pedido"
    t.string "numero_referência_sku_principal"
    t.string "nome_produto"
    t.string "numero_referencia_sku"
    t.string "nome_variacao"
    t.float "preco_original"
    t.float "preco_acordado"
    t.integer "quantidade"
    t.float "subtotal_produto"
    t.float "desconto_vendedor"
    t.float "desconto_vendedor_2"
    t.float "reembolso_shopee"
    t.float "peso_total_sku"
    t.integer "numero_produtos_pedidos"
    t.float "peso_total_pedido"
    t.string "codigo_cupom"
    t.float "cupom_vendedor"
    t.float "seller_absorbed_coin_cashback"
    t.string "cupom_shopee"
    t.string "indicador_leve_mais_menos"
    t.float "desconto_shopee_leve_mais_menos"
    t.float "desconto_leve_mais_menos_vendedor"
    t.integer "compensar_moedas_shopee"
    t.float "total_descontado_cartao_credito"
    t.float "valor_total"
    t.float "taxa_envio_pagas_pelo_comprador"
    t.float "desconto_frete_aproximado"
    t.float "taxa_envio_reversa"
    t.float "taxa_transacao"
    t.float "taxa_comissao"
    t.float "taxa_servico"
    t.float "total_global"
    t.float "valor_estimado_frete"
    t.string "nome_usuário_comprador"
    t.string "nome_destinatario"
    t.string "telefone"
    t.string "cpf_comprador"
    t.string "endereco_entrega"
    t.string "cidade_1"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "pais"
    t.string "cep"
    t.string "observacao_comprador"
    t.datetime "hora_completa_pedido"
    t.string "nota"
    t.integer "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopee_pays", force: :cascade do |t|
    t.datetime "data"
    t.string "beneficiario"
    t.float "pagamento"
    t.string "descricao"
    t.string "status"
    t.string "saldo_carteira"
    t.integer "account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hash_id"
    t.index ["hash_id"], name: "index_shopee_pays_on_hash_id", unique: true
  end

  create_table "wspedidos", force: :cascade do |t|
    t.integer "numero"
    t.datetime "data_pedido"
    t.string "pedidostatus_id"
    t.string "cliente_tipo"
    t.string "cliente_cpfcnpj"
    t.string "cliente_razaosocial"
    t.string "cliente_ie"
    t.string "cliente_data_nascimento"
    t.string "cliente_logradouro"
    t.string "cliente_numero"
    t.string "cliente_informacoes_adicionais"
    t.string "cliente_bairro"
    t.string "cliente_cidade"
    t.string "cliente_estado"
    t.string "cliente_pais"
    t.string "cliente_cep"
    t.string "cliente_telefone"
    t.string "cliente_telefone_comercial"
    t.string "cliente_celular"
    t.string "cliente_email"
    t.string "cliente_observacao"
    t.string "entrega_cpfcnpj"
    t.string "entrega_razaosocial"
    t.string "entrega_ie"
    t.string "entrega_data_nascimento"
    t.string "entrega_logradouro"
    t.string "entrega_numero"
    t.string "entrega_informacoes_adicionais"
    t.string "entrega_bairro"
    t.string "entrega_cidade"
    t.string "entrega_estado"
    t.string "entrega_pais"
    t.string "entrega_cep"
    t.string "entrega_telefone"
    t.string "entrega_telefone_comercial"
    t.string "entrega_celular"
    t.string "entrega_email"
    t.string "envio_prazo"
    t.string "envio_prazo_descricao"
    t.string "entrega_prazo"
    t.string "envio_servico_id"
    t.string "envio_servico"
    t.string "envio_codigo_objeto"
    t.string "pagamento_integrador_id"
    t.string "pagamento_forma"
    t.string "referencia_venda"
    t.string "nota_fiscal"
    t.string "nota_fiscal_serie"
    t.string "nota_fiscal_chave"
    t.string "nota_fiscal_data"
    t.string "total_pedido"
    t.string "desconto_avista"
    t.string "total_descontos"
    t.string "total_acrescimos"
    t.string "total_frete"
    t.string "total_produtos"
    t.string "total_peso"
    t.string "url_rastreamento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
