class CheckoutController < ApplicationController
  def index
    @order = current_order
  end
end
