class CharitiesController < ApplicationController

  def new
    @charity = Charity.new()
  end

  def create
    @charity = Charity.new(charity_params)
    @charity.user = current_user
    @charity.status = "Requested"
    if @charity.save
      redirect_to charity_path(@charity)
    else
      render :new
    end
  end

  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def charity_params
    params.require(:charity).permit(:name, :description, :website_url, :email, :category)
  end

end
