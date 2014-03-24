class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user_id = params[:id]
  end

  def create
  end

  def show
    @post= Post.find(params[:id])
    render :show
  end

  def destroy
  end

end