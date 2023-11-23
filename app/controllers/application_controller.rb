class ApplicationController < ActionController::Base
  # Avec Devise:paramètres autorisés pour les opérations de création User
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name address])
  end

end
