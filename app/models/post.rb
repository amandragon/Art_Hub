class Post < ActiveRecord::Base
  has_many :reviews

    def self.all_posts_by user
    where(user_id: user.id)
    end

end
