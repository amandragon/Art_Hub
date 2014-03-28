class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def landing
    @posts = Post.all
  end

  def new
    @post = Post.new
    @user_id = params[:id]
  end

  def create
    new_post=params.require(:post).permit( :title, :text, :score)
    @post = current_user.posts.create(new_post)
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
    @author= User.find(@post.user_id)

    


    @review = Review.new
    @reviews = Review.where("post_id = ?", params[:id])

    render :show 
  end


  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to(posts_path)
  end

end