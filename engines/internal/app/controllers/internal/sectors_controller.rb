require_dependency 'internal/application_controller'

module Internal
  class SectorsController < ApplicationController 
    before_action :set_sector, only: [:show, :edit, :update, :destroy]
    
    def index
      @sectors = current_account.sectors.order(:name)
    end

    def new
      @sector = current_account.sectors.new
    end

    def create
      @sector = current_account.sectors.new(set_params)

      if @sector.save
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
      params.require(:sector).permit(:name, :observation, :publish)

    end

    def set_sector
      @sector = current_account.sectors.find(params[:id])
    end

  end
end