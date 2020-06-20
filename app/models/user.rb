class User < ApplicationRecord
	has_many :rants, foreign_key: :author_id
	
	has_many :followings, foreign_key: :follower_id
	has_many :followers, class_name: :Following, foreign_key: :followed_id

	validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
	validates :full_name, presence: true

	def followed_users
		followings.map {|following| following.followed }.compact
	end

	def users_following
		followers.map {|following| following.follower }.compact
	end
end
