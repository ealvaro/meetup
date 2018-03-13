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

  scenario "Upload Groups but do not allow more than one role per member" do
    visit "/groups"

    attach_file "file", "import.csv"

    click_button "Import CSV"

    expect(page).to have_text("Group data imported!")
    expect(page).to have_text("Alone")

    click_link "Alone"

    expect(page).to have_text("Alone")

    expect(page).to have_text("Alvaro Escobar")
    expect(page).to have_text("( Presenter )")
    expect(page).to_not have_text("( Organizer )")
    expect(page).to_not have_text("( Participant )")

  end
end