require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RantsHelper. For example:
#
# describe RantsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  user2 = FactoryBot.build(:user)
  describe '#default_avatar' do
    it "returns default profile photo when a user doesn't attach one" do
      expect(helper.default_avatar(user2)).to eq(image_tag('http://www.gravatar.com/avatar/?d=retro', class: 'avatar'))
    end
  end

  describe '#default_cover' do
    it "returns default cover image when a user doesn't attach one" do
      expect(helper.default_cover(user2)).to eq(image_tag('https://bulma.io/images/placeholders/720x240.png', class: 'cover')) # rubocop:disable Layout/LineLength
    end
  end
end
