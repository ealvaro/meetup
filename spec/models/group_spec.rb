require 'rails_helper'

RSpec.describe Group, type: :model do
  let!(:grp1) { FactoryGirl.create :group }	
  describe "attributes" do
    context "name" do
      it "is required" do
        grp1.name = nil
        expect(grp1).to_not be_valid
      end
    end
  end
end
