class ReviewsController < ApplicationController

  before_action :signed_in_user, only: [:create, :new, :edit, :update]

  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new

  end
  def create
    new_review = Review.create
    new_review=params.require(:review).permit(:review_text, :score, :author_id, :reviewer_id)
    @reviewee_id=current_user.id
    render :show
  end
  
  def show
    id = params.require(:id)
    @review = Review.find(id)
    
  end

  def destroy
    review = Review.find(params[:id])
    review.delete
    redirect_to(reviews_path)
  end
end