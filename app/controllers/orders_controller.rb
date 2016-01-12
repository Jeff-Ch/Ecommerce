class OrdersController < ApplicationController
  before_action :require_login
  
  def new
  	Order.create(:shipspeed_id => 1, :orderstatus_id => 1)
  	@products = Cart.where(:user_id => session[:user_id]).where(:order_id => nil)
  	@products.each do |cart_item|
  		Cart.update(cart_item.id, :order_id => Order.last.id)
  	end
  	redirect_to "/orders/confirmation"
  end

  def confirmation
  	@order = Cart.where(:user_id => session[:user_id]).last
  	@products = Cart.where(:user_id => session[:user_id]).where(:order_id => @order.order_id)
  	@cart_total = 0
		@cart_quantity = 0
		@products.each do |cart_item|
			@cart_total += cart_item.quantity * cart_item.product.price
			@cart_quantity += cart_item.quantity
		end
  end
end
