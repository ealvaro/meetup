require 'rails_helper'

RSpec.describe Role, type: :model do
  let!(:rol1) { FactoryGirl.create :role }	
  describe "attributes" do
    context "name" do
      it "is required" do
        rol1.name = nil
        expect(rol1).to_not be_valid
      end
    end
  end
end
