require 'rails_helper'

RSpec.feature 'home page', :js do
  include Devise::Test::IntegrationHelpers

  scenario 'user should see the landing page' do
    visit "/"

    expect(page).to have_content("GrapeVine")
    expect(page).to have_content("Find and hire a bartender today for your own private events and functions.")
    expect(page).to have_content("Learn More")
  end
end
