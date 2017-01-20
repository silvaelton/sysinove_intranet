require_dependency 'customer/application_controller'

module Customer
  class ClientMessagesController < ApplicationController 
    before_action :set_message, only: [:show, :destroy, :edit, :update]

    def index
      @messages = apply_scopes(current_account.client_messages).all
    end

    def new
      @message = current_account.client_messages.sender.new
    end

    def show
    end
    
    def create
      @message = current_account.client_messages.sender.new(set_params)

      if @message.save 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :new
      end
    end

    def edit
    end

    def update
      if @message.update(set_params) 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :edit
      end
    end

    def destroy
      if @message.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:client_message).permit(:client_id, :content)
    end

    def set_message
      @message = current_account.client_messages.find(params[:id])
    end
    
  end
end