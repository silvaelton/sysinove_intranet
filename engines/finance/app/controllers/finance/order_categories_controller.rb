require_dependency 'finance/application_controller'

module Finance
  class OrderCategoriesController < ApplicationController 
    before_action :set_categories
    before_action :set_category, only: [:edit, :update, :destroy]

    def index
    end

    def new
      @category = current_account.order_categories.new
    end

    def create
      @category = current_account.order_categories.new(set_params)
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
      params.require(:order_category).permit(:name, :status)
    end

    def set_category
      @category = current_account.order_categories.find(params[:id])
    end

    def set_categories
      @categories = current_account.order_categories
    end

  end
end