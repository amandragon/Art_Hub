class ReviewsController < ApplicationController

  before_action :signed_in_user, only: [:create, :new, :edit, :update]

  def index
    @reviews = Review.all

    render :json => @reviews
  end

  def new
    @review = Review.new
    @reviewee_id = params[:id]
    @reviews = Review.all
  end
<<<<<<< HEAD
  
=======

  def update
    new_review=params.require(:review).permit( :title, :text, :score, :user_id, :post_id)
    review = Review.find(params[:id])
    review.update_attributes(params[:review])
    render :json => @review
    # binding.pry

  end

>>>>>>> a6f2fe6ccb20cf1744c32ae8507287e7f59e8ebc
  def create
    new_review=params.require(:review).permit( :title, :text, :score, :post_id)
    @review = Review.create(new_review)
    @review.update_attributes(user_id: current_user.id)
    
    render :json => @review

  end
  
  def show
    @review = Review.find(params[:id])
    render :show
    
  end

  def destroy
    review = Review.find(params[:id])
    review.delete
    redirect_to(reviews_path)
  end
end