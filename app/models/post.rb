class Post < ActiveRecord::Base
  has_many :reviews

  validates :user_id, presence: true

  def self.all_posts_by user
    where(user_id: user.id)
  end

end
