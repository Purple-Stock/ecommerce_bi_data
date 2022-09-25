class AddHashIdToShopeePays < ActiveRecord::Migration[7.0]
  def change
    add_column :shopee_pays, :hash_id, :string
    add_index :shopee_pays, :hash_id, unique: true
  end
end
