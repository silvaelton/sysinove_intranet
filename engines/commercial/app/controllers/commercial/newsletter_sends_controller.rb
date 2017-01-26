require_dependency 'commercial/application_controller'

module Commercial
  class NewsletterSendsController < ApplicationController
    
    def index
      @newsletter = current_account.newsletters
    end

  end
end