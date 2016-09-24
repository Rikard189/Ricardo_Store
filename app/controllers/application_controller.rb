class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_categories
  before_action :set_product_type

  private

  def set_categories
    @categories = Category.all
  end

  def set_product_type
    @product_types = ProductType.all
  end
end
