require_dependency 'application_controller'

module External
  class ApplicationController < ApplicationController
    protect_from_forgery with: :exception

    layout 'external'
    helper ::ApplicationHelper

    before_action :authenticate_external_user!

    private

    def authenticate_external_user!
      if session[:external_id].present?

      else
        redirect_to external.new_session_path if controller_name != 'sessions'
      end
    end

  end
end
