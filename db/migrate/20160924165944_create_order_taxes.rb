class CreateOrderTaxes < ActiveRecord::Migration[5.0]
  def change
    create_table :order_taxes do |t|
      t.integer :tax_id
      t.float :total
      t.integer :order_id

      t.timestamps
    end
    add_index :order_taxes, :tax_id
    add_index :order_taxes, :order_id
  end
end
