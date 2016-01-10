class OrdersController < ApplicationController
  def new
  	Order.create(:shipspeed_id => 1, :orderstatus_id => 1)
  	@products = Cart.where(:user_id => session[:user_id]).where(:order_id => nil)
  	@products.each do |cart_item|
  		Cart.update(cart_item.id, :order_id => Order.last.id)
  	end
  end

  def update
  end

  def cancel
  end
end
