class UsersController < ApplicationController

  def profile
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
  end

  private
end
