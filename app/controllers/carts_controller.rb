class CartsController < ApplicationController
  def show
    @order_products = current_order.order_products
    pp current_order
  end
end
