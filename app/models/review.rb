class Review < ActiveRecord::Base
  belongs_to :user
  validates :post_id, presence: true
  after_create :average_reviews

  def self.all_reviews_by user
    where(user_id: user.id)
    # where review user_id is equal to the user's ID
  end


private

  def average_reviews
    post = Post.find(self.post_id)
    a = post.reviews.map{|r| r.score}
    avg = a.inject{ |sum, el| sum + el }.to_f / a.size
    post.update_attributes(:weight_score => avg)

    user = User.find(post.user_id)
    a = user.posts.map{|r| r.weight_score}
    avg = 3.0;
    unless a.nil?
      a.compact!
      avg = a.inject{ |sum, el| sum + el }.to_f / a.size
    end  
    user.update_attributes(:av_score => avg)
  end


end
