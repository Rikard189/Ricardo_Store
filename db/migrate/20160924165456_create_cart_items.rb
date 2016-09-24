class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.integer :product_id
      t.float :total
      t.integer :qty

      t.timestamps
    end
    add_index :cart_items, :product_id
  end
end
