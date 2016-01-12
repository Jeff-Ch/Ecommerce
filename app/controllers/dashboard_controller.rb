class DashboardController < ApplicationController
	before_action :require_login

  def index
  	@user = Username.where(:user_id => session[:user_id]).first
  	@recent = Cart.order('order_id DESC')
  	@recent_items = []
  	@recent.each do |cart_item|
  		@recent_items.push(Product.find(cart_item.product_id))
  	end
  	@recent_items.uniq!
  end
end
