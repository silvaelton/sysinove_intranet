require_dependency 'customer/application_controller'

module Customer
  class ClientsController < ApplicationController 

    def index
      @clients = current_account.clients.order('id DESC')
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_params
    end

    def set_archive
    end
    
  end
end