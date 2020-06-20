class Rant < ApplicationRecord
	belongs_to :author, class_name: :User

	validates :content, presence: true, length: {minimum: 3, maximum: 280}
end
