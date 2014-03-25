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
    new_review=params.require(:review).permit( :title, :text, :score, :user_id, :post_id)
    @review = Review.create(new_review)
    @review.update_attributes(user_id: current_user.id)
    
    respond_to do |format| 
      format.json { render :json => @post }
    end  

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