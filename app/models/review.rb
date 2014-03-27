class Review < ActiveRecord::Base
  belongs_to :user

  validates :post_id, presence: true

  def self.all_reviews_by user
    where(user_id: user.id)
    # where review user_id is equal to the user's ID
  end

end
