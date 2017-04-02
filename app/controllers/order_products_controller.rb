class OrderProductsController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_order
    @shop_product = get_shop_product
    @order_product = OrderProduct.new order_image_params
    @order_product.order = current_order
    @order_product.shop_product = @shop_product
    @order_product.price = @shop_product.price
    @order_product.delivery_days = @shop_product.delivery_days
    if @order_product.save
      flash[:success] = "Success"
      session[:order_id] = @order.id
    else
      flash[:error] = "Error"
    end
    redirect_to :root
  end

  def destroy
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_product.destroy
    @order_products = @order.order_products
  end

  private

  def order_image_params
    params.require(:order_product).permit(:image, :image_cache)
  end

  def get_shop_product
    shop_product_params = params.require(:order_product).permit(:shop_product_id)
    ShopProduct.where(shop_product_params).first
  end

end
