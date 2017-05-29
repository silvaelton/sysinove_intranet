require_dependency 'internal/application_controller'

module Internal
  class StaffBenefitsController < ApplicationController 
    before_action :set_staff
    
    
    def index
      @sectors = @staff.sectors.order(:name)
    end

    def new
      @sector = @staff.sectors.new
    end

    def create
      @sector = @staff.sectors.new(set_params)
      @sector.save
     
    end

    def show
    end

    def edit
    end

    def update

      if @sector.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :index
      end  

    end

    def destroy
      @sector.destroy
      flash[:success] = t :success 
      redirect_to action: :index
    end

    private

    def set_params
    end

    def set_staff
      @staff = current_account.staffs.find(params[:staff_id])
    end

  end
end