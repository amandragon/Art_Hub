class Review < ActiveRecord::Base
  belongs_to :user, through :post
end
