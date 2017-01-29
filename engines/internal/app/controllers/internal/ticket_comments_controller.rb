require_dependency 'internal/application_controller'

module Internal
  class TicketCommentsController < ApplicationController
    before_action :set_ticket

    def index
    end

    def new
      @comment = @ticket.ticket_comments.new
    end

    def create
      @comment = @ticket.ticket_comments.new(set_params)
      @comment.save    
    end

    private

    def set_params
      params.require(:ticket_comment).permit(:content)
    end

    def set_ticket
      @ticket = current_account.tickets.find(params[:ticket_id])
      @comments = @ticket.ticket_comments.order('created_at DESC')
    end

  end
end