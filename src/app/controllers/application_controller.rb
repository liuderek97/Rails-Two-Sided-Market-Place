class ApplicationController < ActionController::Base
  def current_profile
    current_user&.profile
  end
  helper_method :current_profile
  
  def after_sign_in_path_for(profile)
    if current_profile
      root_path
    else
      new_profile_path
    end
  end
end
