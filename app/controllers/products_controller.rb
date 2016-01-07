class ProductsController < ApplicationController
  def index
  	@products = Product.all
  	@categories = Category.all
  end

  def show
  	@product = Product.find(params[:id])
  end

  def from_category
  	@selected = Product.where(:category_id => params[:category_id])
  	respond_to do |format|
  		format.js
  	end
  end
end
