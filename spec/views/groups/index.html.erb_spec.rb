require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  let!(:usr1) { FactoryGirl.create(:user, first_name: "joe",last_name: "smith")}
  let!(:usr2) { FactoryGirl.create(:user, first_name: "mik",last_name: "johnson")}
  let!(:grp1) { FactoryGirl.create(:group, name: "abc")}
  let!(:grp2) { FactoryGirl.create(:group, name: "def")}
  let!(:rol1) { FactoryGirl.create(:role, name: "Organizer", user: usr1, group: grp1)}
  let!(:rol2) { FactoryGirl.create(:role, name: "Presenter", user: usr2, group: grp1)}

  it "renders a list of groups" do
    @groups = [grp1,grp2]
    render
  	expect(rendered).to match /Groups/
	  expect(rendered).to match /abc/
    expect(rendered).to match /def/
  end

  it "has a form to upload a CSV file" do
    @groups = [grp1,grp2]
    render
	  expect(rendered).to match /Import Groups/
    assert_select "form[action=?][method=?]", "/groups/import", "post" do
    end
  end

  it "renders an organizer for each group" do
    @groups = [grp1,grp2]
    render
	  expect(rendered).to match /Organizer\(s\)/
    expect(rendered).to match /smith\,joe/
    expect(rendered).to_not match /johnson\,mik/
  end

end
