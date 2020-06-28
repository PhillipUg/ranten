require 'rails_helper'

RSpec.feature 'Rants', type: :feature do
  feature 'Creating Rants' do
    background do
      @user1 = create(:user, username: 'peter')
      login_user('peter')
    end
    scenario 'with valid params' do
      create_rant('This is a test rant')
      expect(current_path).to eq('/rants')
      expect(page).to have_content('This is a test ran')
    end

    scenario 'with invalid params' do
      create_rant(nil)
      expect(current_path).to eq('/rants')
      expect(page).to have_content("Content can't be blank")
    end
  end
end
