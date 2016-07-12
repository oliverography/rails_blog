class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    session[:user_id] = @user.id

    redirect_to home_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.find(params[:id]).update(user_params)

    redirect_to :back
  end

  def destroy
    User.find(params[:id]).destroy

    redirect_to home_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
