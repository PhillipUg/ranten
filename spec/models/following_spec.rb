require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'Associations' do
    it { should belong_to(:follower).class_name('User') }
    it { should belong_to(:followed).class_name('User') }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:follower_id).scoped_to(:followed_id) }
  end
end
