# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :posts
  has_many :reviews

  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def compute_av_score 
      a = posts.map{|r| r.weight_score}
      a.inject{ |sum, el| sum + el }.to_f / a.size
  end

  def self.update_all
    User.all.each do |u|
      u.update_attributes(:av_score => compute_av_score)
      u.update_attributes.save
    end
  end


    private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end