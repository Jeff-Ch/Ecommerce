class CartsController < ApplicationController
  def index
  	@products = Cart.where(:user_id => session[:user_id])
  end

  def update
  	Cart.create(:user_id => session[:user_id], :product_id => params[:id], :quantity => params[:quantity])
  end

  def delete
  end
end
