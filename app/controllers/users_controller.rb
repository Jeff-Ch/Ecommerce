class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
      @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = User.last.id
      redirect_to '/sessions/new'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/"
    end
    
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end