module Services
  module ShopeeServices
    class ReportIncomeFinishedService
      def self.save_csv(file_path, account)
        csv_text = File.read(Rails.root.join('lib', 'csvs', file_path))
        csv = CSV.parse(csv_text, headers: true, encoding: 'UTF-8')
        puts "csv possui: #{csv.size} linhas"
        shopee_income_finisheds = []
        csv.each do |row|
          shopee_income_finished = ShopeeIncomeFinished.new
          shopee_income_finished.hash_id = Digest::MD5.hexdigest "#{row['ID do pedido']}-#{row['Nome de usuário (Comprador)']}-#{row['Data de criação do pedido']}-#{account}"
          shopee_income_finished.id_pedido = row["Número da sequência"] + ' ' +row["ID do pedido"]
          shopee_income_finished.id_reembolso = row["ID do reembolso"]
          shopee_income_finished.nome_usuario_comprador = row["Nome de usuário (Comprador)"]
          shopee_income_finished.data_criacao_pedido = row["Data de criação do pedido"]
          shopee_income_finished.metodo_pagamento_comprador = row["Método de Pagamento do Comprador"]
          shopee_income_finished.data_conclusao_pagamento = row["Data de conclusão do pagamento"]
          shopee_income_finished.preco_original_produto = row["Preço original do produto"]
          shopee_income_finished.promocao_seu_produto = row["A promoção do seu produto"]
          shopee_income_finished.valor_reembolso_comprador = row["Valor do reembolso para o comprador (R$)"]
          shopee_income_finished.desconto_produto_pela_shopee = row["Desconto do produto pela Shopee"]
          shopee_income_finished.cupom = row["Cupom"]
          shopee_income_finished.cashback_moeda_absorvida_vendedor = row["Cashback de moeda absorvida do vendedor"]
          shopee_income_finished.taxa_frete_paga_pelo_comprador = row["Taxa de frete paga pelo comprador"]
          shopee_income_finished.desconto_frete_pela_shopee = row["Desconto de frete pela Shopee"]
          shopee_income_finished.taxa_frete_real_paga_pela_Shopee = row["Taxa de frete real paga pela Shopee"]
          shopee_income_finished.reverse_shipping_Fee = row["Reverse Shipping Fee"]
          shopee_income_finished.taxa_comissao = row["Taxa de comissão"]
          shopee_income_finished.taxa_servico = row["Taxa de serviço"]
          shopee_income_finished.taxa_transacao = row["Taxa de transação"]
          shopee_income_finished.quantia_total_lancada = row["Quantia total lançada (R$)"]
          shopee_income_finished.codigo_cupom = row["Código do Cupom"]
          shopee_income_finished.compensacao_perdida = row["Compensação perdida"]
          shopee_income_finished.peso_total_real_por_pedido = row["Peso total real por pedido"]
          shopee_income_finished.promocao_taxa_frete_pelo_vendedor = row["Promoção da Taxa de Frete pelo Vendedor"]
          shopee_income_finished.shipping_provider = row["Shipping Provider"]
          shopee_income_finished.nome_transportadora = row["Nome da Transportadora"]

          shopee_income_finisheds << shopee_income_finished
        end
        ShopeeIncomeFinished.import shopee_income_finisheds, on_duplicate_key_update: {
          conflict_target: [:hash_id], columns: [:id_reembolso]
        }
      end
    end
  end
end
