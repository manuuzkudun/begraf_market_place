class ImageUploadController < ApplicationController
  def new
    @shop_product = get_shop_product
    @order_product = OrderProduct.new
  end

  def get_shop_product
    shop_product_params = params.require(:offer).permit(:id)
    ShopProduct.where(shop_product_params).first
  end
end
