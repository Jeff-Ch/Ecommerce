class SessionsController < ApplicationController
  def index
  end

  def login
     @user = User.where(:email => params[:user][:email]).first
      if @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
      redirect_to "/events"
    else
      flash[:errors] = []
      flash[:errors].push("Invalid Login, Try Again")
      redirect_to'/'
    end
  end

  def logout
    session.clear
    redirect_to "/"
  end

  def create_username
    
  end
end
