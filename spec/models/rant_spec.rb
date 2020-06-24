require 'rails_helper'

RSpec.describe Rant, type: :model do
  describe 'Associations' do
    it { should belong_to(:author).class_name(:User) }
  end

  describe 'Validations' do
    it { should validate_presence_of(:content) }
    it { should validate_length_of(:content).is_at_least(3).is_at_most(280) }
  end
end
