class CreateSimploMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :simplo_messages do |t|
      t.string :status_code
      t.string :message

      t.timestamps
    end
  end
end
