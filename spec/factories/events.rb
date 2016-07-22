FactoryGirl.define do
  factory :event do
    name Faker::Hipster.word
    registered_application
  end
end
