class AddHashIdToShopeeOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :shopee_orders, :hash_id, :string
    add_index :shopee_orders, :hash_id, unique: true
  end
end
