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
<<<<<<< HEAD

    @review = Review.new
    @reviews = Review.where("post_id = ?", params[:id])

    render :show 
  end
=======
    @review = Review.new
    # binding.pry
    @reviews = Review.where("post_id = ?", params[:id])
    # binding.pry
    render :show 
  end

  # def update
  #   post = Post.find(params[:id])
  #   post.update_attributes(params[:post, :av_score])
  #   render :json => @post
  # end
>>>>>>> a6f2fe6ccb20cf1744c32ae8507287e7f59e8ebc

  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to(posts_path)
  end

end