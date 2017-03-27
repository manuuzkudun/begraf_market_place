class OrderProductsController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :destroy]

  def create
    @order = current_order
    @order_product = OrderProduct.create order: @order, shop_product: get_shop_product
    # Here when order is save updates the total price
    session[:order_id] = @order.id
    flash[:success] = "#{get_shop_product.product.product_category.name} added to the shopping cart"
    respond_to do |format|
      format.js
    end
  end

  def destroy
  end

  private

  def get_shop_product
    shop_product_params = params.require(:offer).permit(:id)
    ShopProduct.where(shop_product_params).first
  end

end
