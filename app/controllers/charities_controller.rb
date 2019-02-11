class CharitiesController < ApplicationController

  def new
    @charity = Charity.new()
  end

  def create
    @charity = Charity.new(charity_params)
    @charity.user = current_user
    @charity.status = "requested"
    if @charity.save
      redirect_to charity_path(@charity)
    else
      render :new
    end
  end

  def index
    @charities = Charity.all.where(status: "confirmed")
  end

  def show
    @charity = Charity.find(params[:id])
    @posts = @charity.posts
    @post = Post.new()
  end

  def charity_params
    params.require(:charity).permit(:name, :description, :website_url, :email, :category, :photo)
  end

end
