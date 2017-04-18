class CartsController < ApplicationController
  def show
    @order = current_order
    @order_products = @order.order_products
    pp @order_products
  end
end
