json.extract! shopee_pay, :id, :data, :beneficiario, :pagamento, :descricao, :status, :saldo_carteira, :account, :created_at, :updated_at
json.url shopee_pay_url(shopee_pay, format: :json)
