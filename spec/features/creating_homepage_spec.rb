require 'rails_helper'

RSpec.feature "creating homepage" do
  scenario "Verifying homepage content" do
    visit "/"

    expect(page).to have_link("Home")
    expect(page).to have_link("Athletes Den")

    expect(page).to have_content("Workout Lounge")
    expect(page).to have_content("Show off your workout")

  end
end