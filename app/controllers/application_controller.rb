class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil? && Order.find_by(id: session[:order_id])
      Order.find(session[:order_id])
    else
      Order.create! user: current_user, order_status_id: 1
    end
  end

end
