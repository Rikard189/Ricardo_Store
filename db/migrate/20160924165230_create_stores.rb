class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.integer :address_id
      t.string :name

      t.timestamps
    end
    add_index :stores, :address_id
  end
end
