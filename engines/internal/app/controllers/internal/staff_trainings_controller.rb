require_dependency 'internal/application_controller'

module Internal
  class StaffTrainingsController < ApplicationController 
    before_action :set_staff
    
    
    def index
    end

    def new
    end

    def create
    end

    def show
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

    def set_staff
      @staff = current_account.staffs.find(params[:staff_id])
    end

  end
end