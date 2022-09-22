module Services
  module ShopeeServices
    class ReportPayService
      def self.save_csv(file_path, account)
        csv_text = File.read(Rails.root.join('lib', 'csvs', file_path))
        csv = CSV.parse(csv_text, headers: true, encoding: 'UTF-8')
        shopee_pays = []
        csv.each do |row|
          shopee_pay = ShopeePay.new
          shopee_pay.data = row['Data']
          shopee_pay.beneficiario = row['Beneficiário']
          shopee_pay.pagamento = row['Pagamento']
          shopee_pay.descricao = row['Descrição']
          shopee_pay.status = row['Status']
          shopee_pay.saldo_carteira = row['Saldo da Carteira']
          shopee_pay.account = account

          shopee_pays << shopee_pay
        end
        ShopeePay.import(shopee_pays)
      end
    end
  end
end