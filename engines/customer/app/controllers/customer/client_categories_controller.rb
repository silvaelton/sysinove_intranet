require_dependency 'customer/application_controller'

module Customer
  class ClientCategoriesController < ApplicationController 
    before_action :set_client_category, only: [:edit, :update, :destroy]
    before_action :set_client_categories

    def index
    end

    def new
      @category = current_account.client_categories.new
    end

    def create
      @category = current_account.client_categories.new(set_params)
      @category.save
    end

    def edit
    end

    def update
      @category.update(set_params)
    end

    def destroy
      @category.destroy
    end

    private

    def set_params
      params.require(:client_category).permit(:name, :status)
    end

    def set_client_category
      @category = current_account.client_categories.find(params[:id])
    end

    def set_client_categories
      @categories = current_account.client_categories.order(:name)
    end
    
  end
end