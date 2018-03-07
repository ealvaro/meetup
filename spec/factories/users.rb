FactoryGirl.define do
  factory :user do
    first_name    { Faker::Lorem.characters(8) }
    last_name     { Faker::Name.last_name }
  end
end
