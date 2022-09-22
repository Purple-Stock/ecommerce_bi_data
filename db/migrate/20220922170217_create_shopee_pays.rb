class CreateShopeePays < ActiveRecord::Migration[7.0]
  def change
    create_table :shopee_pays do |t|
      t.datetime :data
      t.string :beneficiario
      t.float :pagamento
      t.string :descricao
      t.string :status
      t.string :saldo_carteira
      t.integer :account

      t.timestamps
    end
  end
end
