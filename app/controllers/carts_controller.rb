class CartsController < ApplicationController
	def index
		@products = Cart.where(:user_id => session[:user_id])
		@cart_total = 0
		@products.each do |cart_item|
			@cart_total += cart_item.quantity * cart_item.product.price
		end
	end

	def update
		@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id])
		if @current_product.exists?
			@quantity = @current_product.first.quantity + params[:quantity].to_i
			Cart.update(@current_product.first.id, :quantity => @quantity)
			@product_id = @current_product.first.product_id
		else
			Cart.create(:user_id => session[:user_id], :product_id => params[:id], :quantity => params[:quantity])
			@product_id = Cart.last.product_id
		end
		redirect_to "/cart"
	end

	def delete
	end

	def remove
		@current_product = Cart.where(:user_id => session[:user_id]).where(:product_id => params[:id]).first
		@quantity = @current_product.quantity - params[:quantity].to_i
		if @quantity == 0
			Cart.destroy(@current_product.id)
		else
			Cart.update(@current_product.id, :quantity => @quantity)
		end
		redirect_to "/carts/index"
	end
end
