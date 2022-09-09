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

ActiveRecord::Schema[7.0].define(version: 2022_09_09_185827) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
