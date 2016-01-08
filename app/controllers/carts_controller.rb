class CartsController < ApplicationController
  def index
  	@products = Cart.where(:user_id => session[:user_id])
  	@cart_total = 0
  	@products.each do |cart_item|
  		@cart_total += cart_item.quantity * cart_item.product.price
  	end
  end

  def update
  	Cart.create(:user_id => session[:user_id], :product_id => params[:id], :quantity => params[:quantity])
  end

  def delete
  end

  def remove
  	@params = params
  end
end
