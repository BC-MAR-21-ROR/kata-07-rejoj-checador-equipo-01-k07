class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if resource.role == 'admin'
      "/admin"
    else
      "/"
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :check_pass])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :lastname, :check_pass])
  end
end
