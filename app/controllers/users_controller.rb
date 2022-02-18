class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path(@user)
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end
end
