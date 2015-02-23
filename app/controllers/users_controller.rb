class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "sign up"
  end 

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def create
      @user = User.create(user_params) 
      if @user.save
        sign_in @user
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
      else
        @title = "Sign up"
        render 'new'
      end 
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
