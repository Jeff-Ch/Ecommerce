class UsersController < ApplicationController
  before_action :require_login, except: [:create]

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = User.last.id
      redirect_to '/users/new'
    else
      flash[:error] = @user.errors.full_messages
      redirect_to "/"
    end
  end

  def create_username
    if Username.where(:username => params[:username]).first
      flash[:errors] = ["Username already exists!"]
      redirect_to "/users/new"
    else
      Username.create(:username => params[:username], :user_id => session[:user_id])
      session[:username] = true
      redirect_to '/dashboard'
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
