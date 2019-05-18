class ApplicationController < ActionController::Base
  before_action :basic_auth
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [ :email, :nickname, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '1111'
    end
  end

end
