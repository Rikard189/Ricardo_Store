class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.float :total

      t.timestamps
    end
    add_index :orders, :cart_id
  end
end
