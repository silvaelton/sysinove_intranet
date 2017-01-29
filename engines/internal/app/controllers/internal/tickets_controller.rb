require_dependency 'internal/application_controller'

module Internal
  class TicketsController < ApplicationController
    
    def index
      @tickets = current_account.tickets
    end

    def new
      @ticket = current_account.tickets.new
    end

    def create
      @ticket = current_account.tickets.new(set_params)

      if @ticket.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
      
    end

    private

    def set_params
      params.require(:ticket).permit(:name, :content)
    end

  end
end