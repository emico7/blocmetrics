FactoryGirl.define do
  factory :registered_application do
    name Faker::Name.name
    url Faker::Internet.url
    user
  end
end
