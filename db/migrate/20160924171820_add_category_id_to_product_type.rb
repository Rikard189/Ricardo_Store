class AddCategoryIdToProductType < ActiveRecord::Migration[5.0]
  def change
    add_column :product_types, :category, :integer
    add_index :product_types, :category
  end
end
