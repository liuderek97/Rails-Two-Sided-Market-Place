require 'rails_helper'

RSpec.feature 'home page', :js do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @user    = create(:user)
    @profile = create(:profile, user_id: @user.id, name: 'test', bio:'bio')
  end

  scenario 'user should see all jobs' do
    sign_in @user
    fill_in :email, with: 'user@test.com'
    fill_in :password, with: 'password'
    visit "/jobs"

    expect(page).to have_content("Grapevine Jobs")
    expect(page).to have_content("Get started today find all available jobs now on Grapevine")
  end

  scenario 'click get started' do
    visit "/jobs"
    click_button 'get-started'

    expect(response).to redirect_to "/jobs#jobs"
  end
end
