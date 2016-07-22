# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
  User.create!(

  first_name: Faker::Name.name,
  last_name: Faker::Name.name,
  username: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end

users = User.all

15.times do
  RegisteredApplication.create!(

  user: users.sample,
  name: Faker::Hipster.word,
  url: Faker::Internet.url
  )
end
registered_applications = RegisteredApplication.all

50.times do
  Event.create!(

  registered_application: registered_applications.sample,
  name: Faker::Hipster.word
  )
end
events = Event.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"
