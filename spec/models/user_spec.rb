require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:usr1) { FactoryGirl.create :user }	
  describe "attributes" do
    context "first_name" do
      it "is required" do
        usr1.first_name = nil
        expect(usr1).to_not be_valid
      end
    end
    context "last_name" do
      it "is required" do
        usr1.last_name = nil
        expect(usr1).to_not be_valid
      end
    end
  end

end
