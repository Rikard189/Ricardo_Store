class Product < ApplicationRecord
  belongs_to :category
  belongs_to :product_type
  belongs_to :vendor

end
