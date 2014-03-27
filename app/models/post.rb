class Post < ActiveRecord::Base
  has_many :reviews

  validates :user_id, presence: true

  def self.all_posts_by user
    where(user_id: user.id)
  end

#   def av_score_by reviews
#     where(:av_score: 
#       Review.each do{
# post.reviews.inject{ |sum, el| sum + el }.to_f

#       })



  def av_score 
    a = reviews.map{|r| r.score}
    a.inject{ |sum, el| sum + el }.to_f / a.size
  end



end
