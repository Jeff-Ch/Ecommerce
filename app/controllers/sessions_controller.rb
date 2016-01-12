class SessionsController < ApplicationController
  before_action :require_login, except: [:index, :login]
  
  def index
    # session.clear
  end

  def login
     @user = User.where(:email => params[:user][:email]).first
      if @user and @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        if Username.where(:user_id => session[:user_id]).first
          session[:username] = true
          redirect_to "/dashboard"
        else
          redirect_to "/users/new"
        end
    else
      flash[:error] = []
      flash[:error].push("Invalid Login, Try Again")
      redirect_to "/"
    end
  end

  def logout
    session.clear
    redirect_to "/"
  end
  
end
