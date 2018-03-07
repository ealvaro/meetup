FactoryGirl.define do
  factory :role do
    name        ["Organizer","Presenter","Participant"].sample
    user        {FactoryGirl.create :user }
    group       {FactoryGirl.create :group }
  end
end
