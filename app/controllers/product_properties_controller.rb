class ProductPropertiesController < ApplicationController
   def index
    @product_catecory = ProductCategory.where(product_category_params).first
    @product_properties = @product_catecory.product_properties
  end

  private

  def product_category_params
    params.require(:product_category).permit(:id)
  end

end
