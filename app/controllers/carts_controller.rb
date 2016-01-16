class CartsController < ApplicationController
	before_action :require_login
	
	def index
		@products = Cart.where(:user_id => session[:user_id]).where(:order_id => nil)
		@cart_total = 0
		@cart_quantity = 0
		@products.each do |cart_item|
			@cart_total += cart_item.quantity * cart_item.product.price
			@cart_quantity += cart_item.quantity
		end
		@email = User.find(session[:user_id]).email
	end

	def update
		@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id]).where(:order_id => nil)
		if @current_product.exists?
			@quantity = @current_product.first.quantity + params[:quantity].to_i
			Cart.update(@current_product.first.id, :quantity => @quantity)
			@product_id = @current_product.first.product_id
		else
			Cart.create(:user_id => session[:user_id], :product_id => params[:id], :quantity => params[:quantity])
			@product_id = Cart.last.product_id
		end
		if params[:origin] == "info"
			redirect_to "/cart"
		else
			redirect_to "/products"
		end
	end

	def remove
		@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id]).where(:order_id => nil).first
		@quantity = @current_product.quantity - params[:quantity].to_i
		if @quantity == 0
			Cart.destroy(@current_product.id)
		else
			Cart.update(@current_product.id, :quantity => @quantity)
		end
		redirect_to "/cart"
	end
end
