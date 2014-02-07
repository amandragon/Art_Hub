class ReviewsController < ApplicationController

  before_action :signed_in_user, only: [:create, :new, :edit, :update]

  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
    @reviewee_id = params[:id]
    # binding.pry
  end
  def create
    # binding.pry
    # new_review = Review.create
    new_review=params.require(:review).permit( :title, :review_text, :score, :reviewee_id)
    @review = Review.create(new_review)
    # binding.pry 
    @review.update_attributes(author_id: current_user.id)
    # binding.pry
    render :show
  end
  
  def show
    @review = Review.find(params[:id])

    # @review.update_attributes(params[:review])
    render :show
    
  end

  def destroy
    review = Review.find(params[:id])
    review.delete
    redirect_to(reviews_path)
  end
end