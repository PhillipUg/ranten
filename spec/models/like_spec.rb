require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:rant) }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:rant_id) }
  end
end
