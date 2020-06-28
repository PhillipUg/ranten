class Rant < ApplicationRecord
  belongs_to :author, class_name: :User
  has_many :likes, dependent: :destroy

  validates :content, presence: true, length: { minimum: 3, maximum: 280 }
end
