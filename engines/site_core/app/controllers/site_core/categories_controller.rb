require_dependency 'site_core/application_controller'

module SiteCore
  class CategoriesController < ApplicationController 
    before_action :set_categories
    before_action :set_category, only: [:edit, :update, :destroy]

    def index
    end

    def new
      @category = current_account.categories.new
    end

    def create
      @category = current_account.categories.new(set_params)
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
      params.require(:category).permit(:name, :status)
    end

    def set_category
      @category = current_account.categories.find(params[:id])
    end

    def set_categories
      @categories = current_account.categories
    end

  end
end