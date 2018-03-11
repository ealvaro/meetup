require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  let!(:usr1) { FactoryGirl.create(:user, first_name: "joe",last_name: "smith")}
  let!(:usr2) { FactoryGirl.create(:user, first_name: "mik",last_name: "johnson")}
  let!(:grp1) { FactoryGirl.create(:group, name: "abc")}
  let!(:grp2) { FactoryGirl.create(:group, name: "def")}
  let!(:rol1) { FactoryGirl.create(:role, name: "Organizer", user: usr1, group: grp1)}
  let!(:rol2) { FactoryGirl.create(:role, name: "Presenter", user: usr2, group: grp1)}

  it "renders attributes in <p>" do
    @group = grp1
    render
	expect(rendered).to match /Group:/
	expect(rendered).to match /abc/
	expect(rendered).to match /Users:/
  end

  it "render users and roles in the group" do
    @group = grp1
    render
    expect(rendered).to match /joe smith/
    expect(rendered).to match /\( Organizer \)/
    expect(rendered).to match /mik johnson/
    expect(rendered).to match /\( Presenter \)/
  end
end
