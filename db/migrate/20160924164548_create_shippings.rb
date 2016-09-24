class CreateShippings < ActiveRecord::Migration[5.0]
  def change
    create_table :shippings do |t|
      t.string :region
      t.float :price

      t.timestamps
    end
  end
end
