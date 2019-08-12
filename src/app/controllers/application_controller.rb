class ApplicationController < ActionController::Base

  # Current profile helper, helper method is so we can use this method in views.
  def current_profile
    current_user&.profile
  end
  helper_method :current_profile

 # authenticate_current_profile helper, so that if a user has not yet created
 # a profile. They must do so before using any other feature.
  def authenticate_current_profile
    unless current_profile
      redirect_to new_profile_path
    end
  end
  helper_method :authenticate_current_profile

  # after sign in path
  def after_sign_in_path_for(profile)
    current_profile ? root_path : new_profile_path
  end    
end
