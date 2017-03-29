class OrderProductsController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_order
    @order_product = OrderProduct.create order: @order, shop_product: get_shop_product
    session[:order_id] = @order.id
  end

  def destroy
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_product.destroy
    @order_products = @order.order_products
  end

  private

  def get_shop_product
    shop_product_params = params.require(:offer).permit(:id)
    ShopProduct.where(shop_product_params).first
  end

end
