FactoryBot.define do
  factory :user do
    sequence(:id)
    username { 'MyString' }
    full_name { 'MyString' }
  end
end
