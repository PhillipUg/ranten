require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.feature 'Users', type: :feature do
  feature 'Signing Up' do
    scenario 'with invalid params' do
      create_user(nil, nil)
      expect(page).to have_content("Full namecan't be blank")
    end
    scenario 'with valid params' do
      user1 = build(:user)
      create_user(user1.username, user1.full_name)
      expect(page).to have_content('User was successfully created.')
    end
  end
  feature 'Signing In' do
    background do
      @user1 = create(:user)
    end
    scenario 'with correct credentials' do
      login_user(@user1.username)
      expect(current_path).to eq('/rants')
      expect(page).to have_content('Successfully Logged In')
    end
    scenario 'without correct credentials' do
      login_user('Tommy')
      expect(current_path).to eq('/login')
      expect(page).to have_content('Incorrect Username. Try again.')
    end
  end
  feature 'Following a user' do
    background do
      @user1 = create(:user, username: 'greg')
      @user2 = create(:user, username: 'mary')
    end
    scenario 'can follow another user' do
      login_user('greg')
      page.first('.name').click
      page.first('.follow-plus').click
      expect(current_path).to eq("/users/#{@user2.id}")
      expect(page).to have_content('Started following')
      expect(@user2.users_following.count).to eq(1)
    end
  end

  feature 'Unfollowing a user' do
    background do
      @user1 = create(:user, username: 'greg')
      @user2 = create(:user, username: 'mary')
    end
    scenario 'can unfollow a user' do
      login_user('greg')
      page.first('.name').click
      page.first('.follow-plus').click
      page.first('.follow-ex').click
      expect(current_path).to eq("/users/#{@user2.id}")
      expect(page).to have_content('Unfollowed User')
      expect(@user2.users_following.count).to eq(0)
    end
  end
end
# rubocop:enable Metrics/BlockLength
