class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def show
    @user = User.find(params[:id])
    @posts_by_user = Post.all_posts_by @user
    # @reviews_by_user = Review.all_reviews_by @user
  end

  def new
    @user = User.new()
  end

  def create
    new_user = params.require(:user).permit(:name, :email, :password, :password_confirmation)
    @user=User.new(new_user)
    if @user.save
      flash[:success] = "Welcome to ArtHub!"
      sign_in @user
      redirect_to current_user
    else
      render'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end

end

