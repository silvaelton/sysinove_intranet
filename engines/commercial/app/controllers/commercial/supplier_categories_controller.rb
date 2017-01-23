require_dependency 'commercial/application_controller'

module Commercial
  class SupplierCategoriesController < ApplicationController 
    before_action :set_supplier_category, only: [:edit, :update, :destroy]
    before_action :set_supplier_categories

    def index
    end

    def new
      @category = current_account.supplier_categories.new
    end

    def create
      @category = current_account.supplier_categories.new(set_params)
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
      params.require(:supplier_category).permit(:name, :status)
    end

    def set_supplier_category
      @category = current_account.supplier_categories.find(params[:id])
    end

    def set_supplier_categories
      @categories = current_account.supplier_categories.order(:name)
    end
    
  end
end