class CartsController < ApplicationController
  def index
  	@products = Cart.where(:user_id => session[:user_id])
  	@cart_total = 0
  	@products.each do |cart_item|
  		@cart_total += cart_item.quantity * cart_item.product.price
  	end
  end

  def update
  	@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id]).first
  	if @current_product
  		@quantity = @current_product.quantity + params[:quantity].to_i
  		Cart.update(@current_product.id, :quantity => @quantity)
  	else
  	Cart.create(:user_id => session[:user_id], :product_id => params[:id], :quantity => params[:quantity])
  end
  end

  def delete
  end

  def remove
  	@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id]).first
  	@quantity = @current_product.quantity - params[:quantity].to_i
  	puts "GIIIII"
  	puts @quantity
  	puts "DJSJDSJDSJ"
  	if @quantity == 0
  		Cart.destroy(@current_product.id)
  	else
  		Cart.update(@current_product.id, :quantity => @quantity)
  	end
  	redirect_to "/carts/index"
  end
end
