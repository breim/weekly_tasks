# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user
  protect_from_forgery with: :null_session

	private

	def after_sign_in_path_for(_resource)
	 	dashboard_tasks_path
  end
end
