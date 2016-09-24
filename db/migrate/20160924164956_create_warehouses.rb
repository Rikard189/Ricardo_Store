class CreateWarehouses < ActiveRecord::Migration[5.0]
  def change
    create_table :warehouses do |t|
      t.integer :address_id
      t.string :name

      t.timestamps
    end
    add_index :warehouses, :address_id
  end
end
