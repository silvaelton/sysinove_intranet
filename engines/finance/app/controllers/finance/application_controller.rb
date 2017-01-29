require_dependency 'application_controller'

module Finance
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

    layout 'application'

    helper ::ApplicationHelper

    before_action :authenticate?
  end
end
