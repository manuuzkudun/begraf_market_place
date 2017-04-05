class PaymentsController < ApplicationController
  before_action :set_order

  def new

  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.total_amount_cents, # or amount_pennies
      description:  "Payment for order #{@order.id}",
      currency:     @order.total_amount.currency
    )

    @order.update(payment: charge.to_json, order_status_id: 2)
    redirect_to payment_path(@order.id)


  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_payment_path
  end

  def show
    @order = Order.where(order_status_id: 2).find(params[:id])
  end

  private

  def set_order
    @order = current_order
  end
end
