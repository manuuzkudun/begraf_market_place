class Order < ApplicationRecord
  belongs_to :order_status
  belongs_to :user
  has_many :order_products
  monetize :total_amount_cents
  # before_create :set_order_status
  #before_save :update_total_amount

  def total_amount
    if order_products.any?
      order_products.collect { |order_product| order_product.price }.sum
    else
      Money.new(0, 'EUR')
    end
  end

  def total_amount_cents
    total_amount.fractional
  end

  private

  def set_order_status
    self.order_status_id = 1
  end

  def update_total_amount
    self[:total_amount_cents] = total_amount
  end

end


