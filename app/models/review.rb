class Review < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :reviewee, class_name: "User"

  def self.all_reviews_by reviewer
  	Review.where(reviewee_id: reviewer.id)
  end

  def self.all_reviews_for author
  	Review.where(author_id: author.id)
  end
end
