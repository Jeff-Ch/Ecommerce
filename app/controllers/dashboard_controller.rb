class DashboardController < ApplicationController
	before_action :require_login

  def index
  	@user = Username.where(:user_id => session[:user_id]).first
  end
end
