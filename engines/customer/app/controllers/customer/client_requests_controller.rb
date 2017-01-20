require_dependency 'customer/application_controller'

module Customer
  class ClientRequestsController < ApplicationController 
    before_action :set_request, only: [:show, :destroy, :edit, :update]
    def index
      @requests = apply_scopes(current_account.client_requests).all
    end

    def new
      @request = current_account.client_requests.sender.new
    end

    def show
    end
    
    def create
      @request = current_account.client_requests.sender.new(set_params)

      if @request.save 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :new
      end
    end

    def edit
    end

    def update
      if @request.update(set_params) 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :edit
      end
    end

    def destroy
      if @request.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:client_request).permit(:client_id, :content, :file_path)
    end

    def set_request
      @request = current_account.client_requests.find(params[:id])
    end
    
  end
end