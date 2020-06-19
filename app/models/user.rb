class User < ApplicationRecord
	has_many :rants, foreign_key: :author_id

	has_many :followings, foreign_key: :followed_id
	has_many :followers, through: :followings, source: :follower
end
