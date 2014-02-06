class UsersController < ApplicationController

  def index
    @users=User.all
  end

  def show
    @user = User.find(params[:id])
    @reviews_by_user = Review.all_reviews_by @user
    @reviews_for_user= Review.all_reviews_for @user
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
      redirect_to user
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

