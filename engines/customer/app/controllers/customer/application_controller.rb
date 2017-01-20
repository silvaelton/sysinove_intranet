require_dependency 'application_controller'

module Customer
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

    layout 'application'

    helper ::ApplicationHelper
  end
end
