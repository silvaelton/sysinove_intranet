require_dependency 'internal/application_controller'

module Internal
  class StaffsController < ApplicationController
    before_action :set_staff, only: [:show, :edit, :update, :destroy]
    
    def index
      @staffs = current_account.staffs.order(:name)
    end

    def new
      @staff = current_account.staffs.new
    end

    def create
      @staff = current_account.staffs.new(set_params)

      if @staff.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end

    end

    def show
    end

    def edit
    end

    def update

      if @staff.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :edit
      end  

    end

    def destroy
      @staff.destroy
      flash[:success] = t :success 
      redirect_to action: :index
    end

    private

    def set_params
      params.require(:staff).permit(:name, :address, :cpf, :rg, :rg_org, :telephone, 
                                    :telephone_optional, :celphone, :email, :cep, 
                                    :state_id, :city, :complement, :user_active, :username, 
                                    :password, :sector_id, :job, :code, :situation)

    end

    def set_staff
      @staff = current_account.staffs.find(params[:id])
    end

  end
end