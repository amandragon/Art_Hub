class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user_id = params[:id]
  end

  def create
    new_post=params.require(:post).permit( :title, :text, :user_id, :score)
    @post = Post.create(new_post)
    render :show
  end

  def show
    @post= Post.find(params[:id])
    render :show
  end

  def score_post

  end

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to(posts_path)
  end

end