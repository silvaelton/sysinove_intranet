require_dependency 'internal/application_controller'

module Internal
  class GeneralMessagesController < ApplicationController 
    before_action :set_messages

    def new
      @chat = current_account.general_messages.new
    end

    def create
      @chat = current_account.general_messages.new(set_params)
      @chat.save
    end

    private

    def set_messages
      @messages = current_account.general_messages.order('created_at ASC')
    end

    def set_params
      params.require(:general_message).permit(:content)
    end
  end
end