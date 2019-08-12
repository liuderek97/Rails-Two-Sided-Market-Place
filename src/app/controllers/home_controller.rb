class HomeController < ApplicationController
  def index
    #limit the amount of jobs shown, .limit(num) is uesd to lesson logic.
    @jobs = Job.limit(4)
    @bartender_profiles = Profile.where('bartender = True')
    @bartenders = @bartender_profiles.limit(4)
  end
end
