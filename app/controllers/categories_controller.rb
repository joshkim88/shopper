class CategoriesController < ApplicationController

# this is joining all categories to products categories.
  def index
    @categories = Category.joins(:products).select('categories.*, count(products.id) as products_count').group('categories.id').order(:title)
  end

end
