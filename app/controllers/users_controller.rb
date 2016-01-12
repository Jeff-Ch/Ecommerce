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
      flash[:error] = ["Username already exists!"]
      redirect_to "/users/new"
    else
      Username.create(:username => params[:username], :user_id => session[:user_id])
      session[:username] = true
      redirect_to '/dashboard'
    end
  end


  def edit
    @user = User.find(session[:user_id])
  end

  def update
    params[:user].each do |attr|
      if attr[1] != ""
        @value = {attr[0] => attr[1]}
        if attr[0] == "username"
          Username.update(Username.where(:user_id => session[:user_id]).first.id, @value)
        else
          @user = User.find(session[:user_id])
          @user.attributes = @value
          @user.save(:validate => false)
        end
      end
    end
    flash[:error] = ["Changes succesfully made."]
    redirect_to "/dashboard"
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
