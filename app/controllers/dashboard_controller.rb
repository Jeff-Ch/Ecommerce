class DashboardController < ApplicationController
	before_action :require_login

  def index
  	@user = Username.where(:user_id => session[:user_id]).first
  	@recent = Cart.order('order_id DESC')
  	@recent_items = []
  	@recent.each do |cart_item|
  		if cart_item.order_id != nil
  			@recent_items.push(Product.find(cart_item.product_id))
  		end
  	end
  	@recent_items.uniq!
    @all_items = Cart.where(:user_id => session[:user_id]).where.not(:order_id => nil)
    @list_of_orders = []
    @all_items.each do |item|
      @list_of_orders.push(Order.find(item.order_id))
    end
    @list_of_orders.uniq!
  end

end
