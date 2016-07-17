FactoryGirl.define do

  pw = Faker::Internet.password

  factory :user do
    first_name Faker::Name.name
    last_name Faker::Name.name
    username Faker::Name.name
    email Faker::Internet.email
    password pw
    password_confirmation pw
  end
end
