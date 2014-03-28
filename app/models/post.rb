class Post < ActiveRecord::Base
  has_many :reviews
  validates :user_id, presence: true
  after_create :average_posts

  def self.all_posts_by user
    where(user_id: user.id)
  end


private

  def average_posts
    # user = User.find(self.user_id)
    # a = user.posts.map{|r| r.weight_score}
    # avg = 3.0;
    # if a.nil?
    #   avg = a.inject{ |sum, el| sum + el }.to_f / a.size
    # end  
    # binding.pry
    # user.update_attributes(:av_score => avg)
  end



end
