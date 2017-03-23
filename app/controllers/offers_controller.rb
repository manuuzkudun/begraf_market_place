class OffersController < ApplicationController
  def find_offers

        puts "----------"
        pp product_params
        puts "----------"
    product = Product.where(product_params)
    @offers = ShopProduct.where(product: product)
    respond_to do |format|
      format.js
    end
  end

  def product_params
    formatted_params = params.require(:product).permit(:format, :print_mode, :paper_type, :quantity, :print_finish)
    formatted_params[:quantity] = formatted_params[:quantity].to_i
    formatted_params
  end
end
