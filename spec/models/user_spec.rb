require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:rants).with_foreign_key(:author_id).dependent(:destroy) }
    it { should have_many(:followings).with_foreign_key(:follower_id) }
    it { should have_many(:followers).class_name(:Following).with_foreign_key(:followed_id) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_length_of(:username).is_at_least(3).is_at_most(50) }
    it { should validate_presence_of(:full_name) }
  end
end
