FactoryGirl.define do
  factory :registered_application do
    name Faker::Hipster.word
    url Faker::Internet.url
    user
  end
end
