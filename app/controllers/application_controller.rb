class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def after_sign_in_path_for(resource)
    # request.env['omniauth.origin'] || stored_location_for(resource) || courses_path
    courses_path
  end
end
