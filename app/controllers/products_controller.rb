class ProductsController < ApplicationController
  # this allows user to see categories and their products.
  def index
      @category = Category.find(params[:category_id])
      @products = @category.products.includes(:variants).order(:title)
  end
end
