class ProductCategoriesController < ApplicationController
  def index
    @product_categories = ProductCategory.all
  end

  def show
    @product_catecory = ProductCategory.find(params[:id])
    @product_properties = @product_catecory.product_properties
    respond_to do |format|
      format.js
    end
  end
end
