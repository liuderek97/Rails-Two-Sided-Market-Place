require 'rails_helper'

RSpec.feature 'post jobs', :js do
  include Devise::Test::IntegrationHelpers

  before(:each) do
    @mary         = create(:user, email: 'mary@gmail.com')
    @mary_profile = create(:profile, user_id: @mary.id, name: 'Mary', bio: 'bio')

    sign_in @mary
  end

  scenario 'user should see all jobs' do
    visit new_job_path
    expect(page).to have_content("New Job")
    
    fill_in 'job_title',   with: 'Mary Job'
    fill_in 'job_amount',  with: 100
    fill_in 'job_content', with: 'Xmas Party'
    fill_in 'job_address', with: 'My Place'
    click_button 'Create Job'

    expect(Job.find_by(title: 'Mary Job').title).to eq 'Mary Job'
  end
  
end
