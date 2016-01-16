class OrdersController < ApplicationController
  before_action :require_login
  
  def new
    @products = Cart.where(:user_id => session[:user_id]).where(:order_id => nil)
    @cart_total = 0
    @cart_quantity = 0
    @products.each do |cart_item|
      @cart_total += cart_item.quantity * cart_item.product.price
      @cart_quantity += cart_item.quantity
    end
  	Order.create(:status => "Processing", :total => @cart_total, :quantity => @cart_quantity)
  	@products.each do |cart_item|
  		Cart.update(cart_item.id, :order_id => Order.last.id)
  	end
  	redirect_to "/orders/confirmation"
  end

  def confirmation
  	@order = Order.find(Cart.where(:user_id => session[:user_id]).last.order_id)
    @products = Cart.where(:order_id => @order.id)
  end

  def show
    @order = Order.find(params[:id])
    @products = Cart.where(:order_id => params[:id])
    render "/orders/confirmation"
  end

  def cancel
    Order.update(params[:id], :status => "Cancelled")
    redirect_to "/dashboard"
  end
end
