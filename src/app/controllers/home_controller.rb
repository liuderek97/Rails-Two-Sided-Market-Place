class HomeController < ApplicationController
  def index
    @jobs = Job.limit(4)
    @bartender_profiles = Profile.where('bartender = True')
    @bartenders = @bartender_profiles.limit(4)
  end
end
