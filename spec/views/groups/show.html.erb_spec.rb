require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(name: "abc"))
  end

  it "renders attributes in <p>" do
    render
  end
end
