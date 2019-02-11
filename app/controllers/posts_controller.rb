class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new()
    @charity = Charity.find(params)
  end

  def create
    @post = Post.new(post_params)
    @charity = Charity.find(params[:charity_id])
    @post.charity = @charity
    @post.save
    redirect_to charity_path(@charity)
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
