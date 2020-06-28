FactoryBot.define do
  factory :user do
    sequence(:id)
    username { Faker::Name.middle_name }
    full_name { Faker::Name.name }
  end
end
