class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :order_id
      t.string :transaction_id
      t.string :payment_type
      t.float :total

      t.timestamps
    end
    add_index :payments, :order_id
    add_index :payments, :transaction_id
  end
end
