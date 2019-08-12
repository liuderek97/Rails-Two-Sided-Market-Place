require 'rails_helper'

RSpec.feature 'browse jobs', :js do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @mary         = create(:user, email: 'mary@gmail.com')
    @john         = create(:user, email: 'john@gmail.com')
    @mary_profile = create(:profile, user_id: @mary.id, name: 'Mary', bio: 'bio')
    @john_profile = create(:profile, user_id: @john.id, name: 'John', bio: 'bio')
    @mary_job     = create(:job, employer_id: @mary_profile.id, title: "Mary Job")
    @john_job     = create(:job, employer_id: @john_profile.id, title: "John Job")
    @mary_bid     = create(:bid, job_id: @john_job.id, bartender_id: @mary_profile.id, content: 'Choose me')
    @john_bid     = create(:bid, job_id: @mary_job.id, bartender_id: @john_profile.id, content: 'Please pick me')

    sign_in @mary
  end

  scenario 'user should see all jobs' do
    visit "/jobs"

    expect(page).to have_content("Grapevine Jobs")
    expect(page).to have_content("Mary Job")
    expect(page).to have_content("John Job")
    expect(page).to have_content("Get started today find all available jobs now on Grapevine")
  end

  scenario 'filtering jobs by job owner' do
    visit "/jobs"
    expect(page).to have_content("Mary Job")
    expect(page).to have_content("John Job")
    
    click_link 'My jobs'
    expect(page).to     have_content("Mary Job")
    expect(page).not_to have_content("John Job")
    
    click_link 'All'
    expect(page).to have_content("Mary Job")
    expect(page).to have_content("John Job")
  end
  
  scenario 'filtering jobs by bid owner' do
    visit "/jobs"
    expect(page).to have_content("Mary Job")
    expect(page).to have_content("John Job")
    
    click_link "Jobs I've bid on"
    expect(page).not_to have_content("Mary Job")
    expect(page).to     have_content("John Job")
    
    click_link 'All'
    expect(page).to have_content("Mary Job")
    expect(page).to have_content("John Job")
  end
  
  scenario 'post a new job takes you there' do
    visit "/jobs"
    expect(page).to have_content("Grapevine Jobs")
    click_link "Post Job"

    expect(page).to have_current_path(new_job_path)
    expect(page).to have_content("New Job")
  end
end
