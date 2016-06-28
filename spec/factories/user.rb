FactoryGirl.define do
  factory :user do
    email { Ffaker::Internet.email }
    name { Ffaker::Name.name }
    password '12345678'
    password_confirmation '12345678'
    username { Ffaker.bothify('??????????###') }
  end
end
