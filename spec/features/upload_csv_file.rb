require 'rails_helper'

RSpec.feature "Upload CSV", :type => :feature do
  scenario "Upload a CSV file with groups" do
    visit "/groups"

    attach_file "file", "import.csv"

    click_button "Import CSV"

    expect(page).to have_text("Group data imported!")
    expect(page).to have_text("Groups")
    expect(page).to have_text("Organizer(s)")
    expect(page).to have_text("AngularJS")
    expect(page).to have_text("Ulmer,Drew")
  end
end