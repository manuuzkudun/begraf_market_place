class OffersController < ApplicationController
  def index
    @product = Product.where(product_params).first
    @offers = ShopProduct.where(product: @product)
  end

  def product_params
    formatted_params = params.require(:product).permit(:format, :print_mode, :paper_type, :quantity, :print_finish)
    formatted_params[:quantity] = formatted_params[:quantity].to_i
    formatted_params
  end

end
