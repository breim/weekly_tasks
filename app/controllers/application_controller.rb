require 'application_responder'

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  helper_method :current_user
  protect_from_forgery with: :null_session

  private

  before_action :configure_devise_params, if: :devise_controller?
  def configure_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %I[name password password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: %I[name password password_confirmation])
  end

  def after_sign_in_path_for(_resource)
    dashboard_weeks_path
  end
end
