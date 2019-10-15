require 'application_responder'

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  helper_method :current_user
  protect_from_forgery with: :null_session

  private

  def after_sign_in_path_for(_resource)
    dashboard_weeks_path
  end
end
