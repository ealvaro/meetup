require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(name: "abc"))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do
		expect(rendered).to match /Editing Group/
		expect(rendered).to match /Update Group/
    end
  end
end
