class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.float :total

      t.timestamps
    end
    add_index :carts, :user_id
  end
end
