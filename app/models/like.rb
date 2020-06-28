class Like < ApplicationRecord
  belongs_to :user
  belongs_to :rant

  validates :user_id, uniqueness: { scope: :rant_id }
end
