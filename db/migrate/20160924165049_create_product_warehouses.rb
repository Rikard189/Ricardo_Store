class CreateProductWarehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :product_warehouses do |t|
      t.integer :warehouse_id
      t.integer :product_id
      t.integer :qty
      t.string :rack

      t.timestamps
    end
    add_index :product_warehouses, :warehouse_id
    add_index :product_warehouses, :product_id
    add_index :product_warehouses, :rack
  end
end
