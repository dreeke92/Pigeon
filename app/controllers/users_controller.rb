class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def settings
    @user = current_user
    @users = User.all
    @charities = Charity.all
  end

  def preferences
    @themes = CharityTheme.all
    @types = CharityType.all
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:charity_theme_ids => [], :charity_type_ids => [])
  end
end
