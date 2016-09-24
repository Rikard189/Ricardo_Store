class RenameProductType < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_types, :category, :category_id
  end
end
