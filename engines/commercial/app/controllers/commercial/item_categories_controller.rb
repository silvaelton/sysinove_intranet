module Commercial
  class ItemCategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update, :destroy]
    
    def index
      @categories = current_account.item_categories
    end

    def new
      @category = current_account.item_categories.new
    end

    def create
      @category = current_account.item_categories.new(set_params)
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
      params.require(:item_category).permit(:name, :status)
    end

    def set_category
      @category = current_account.item_categories.find(params[:id])
    end

  end
end
