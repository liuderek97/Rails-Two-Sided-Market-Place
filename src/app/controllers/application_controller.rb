class ApplicationController < ActionController::Base
  def current_profile
    current_user&.profile
  end
  helper_method :current_profile
  
  s