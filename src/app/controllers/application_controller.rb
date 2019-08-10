class ApplicationController < ActionController::Base
  helper_method :current_profile
  helper_method :authenticate_current_profile

  def current_profile
    current_user&.profile
  end

  def after_sign_in_path_for(profile)
    if current_profile
      root_path
    else
      new_profile_path
    end
  end

  def authenticate_current_profile
    unless current_profile
      redirect_to new_profile_path
    end
  end
end
