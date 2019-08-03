class HomeController < ApplicationController
  def index
    @jobs = Job.limit(4)
  end
end
