require_dependency 'internal/application_controller'

module Internal
  class StaffsController < ApplicationController
    before_action :set_staff, only: [:show, :edit, :update, :destroy]
    
    def index
      @staff = ::Internal::Staff.all
    end

    def new
      @staff = ::Internal::Staff.new
    end

    def create
      @staff = ::Internal::Staff.new(set_params)

      if @staff.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :index
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
        render action: :index
      end  

    end

    def destroy
      @staff.destroy
      flash[:success] = t :success 
      redirect_to action: :index
    end

    private

    def set_params
      params.require(:staff).permit(:name, :address)
    end

    def set_staff
      @staff = Internal::Staff.find(params[:id])
    end

  end
end