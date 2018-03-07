require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(name: "abc"),
      Group.create!(name: "def")
    ])
  end

  it "renders a list of groups" do
    render
  end
end
