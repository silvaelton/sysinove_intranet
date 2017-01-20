require_dependency 'customer/application_controller'

module Customer
  class ClientAlertsController < ApplicationController 
    before_action :set_alert, only: [:show, :destroy, :edit, :update]
    def index
      @alerts = apply_scopes(current_account.client_alerts).all
    end

    def new
      @alert = current_account.client_alerts.new
    end

    def show
    end
    
    def create
      @alert = current_account.client_alerts.new(set_params)

      if @alert.save 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :new
      end
    end

    def edit
    end

    def update
      if @alert.update(set_params) 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :edit
      end
    end

    def destroy
      if @alert.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:client_alert).permit(:client_id, :content, :priority, :publish, :expires_at)
    end

    def set_alert
      @alert = current_account.client_alerts.find(params[:id])
    end
    
  end
end