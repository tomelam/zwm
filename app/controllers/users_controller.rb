class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def authenticate_admin
      redirect_to '/', alert: 'Not authorized.' unless current_user && access_whitelist
    end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    authorize user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def access_whitelist
    current_user.try(:admin?)
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
