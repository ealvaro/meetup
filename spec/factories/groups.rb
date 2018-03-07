FactoryGirl.define do
  factory :group do
    name        { Faker::Lorem.characters(8) }
  end
end
