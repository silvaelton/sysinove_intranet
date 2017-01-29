require_dependency 'application_controller'

module Internal
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
    before_action :authenticate?

    layout 'application'

  end
end
