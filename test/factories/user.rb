FactoryGirl.define do
  factory :user do
    fullname: Faker::Name.name
    username: Faker::Name.username
    email: Faker::Internet.email
    password: "password"
    password_confirmation: "password"
end
