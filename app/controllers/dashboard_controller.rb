class DashboardController < ApplicationController
  def index
  	@user = Username.where(:user_id => session[:user_id]).first
  end
end
