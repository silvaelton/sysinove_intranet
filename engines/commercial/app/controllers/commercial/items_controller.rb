require_dependency 'commercial/application_controller'

module Commercial
  class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
      @items = current_account.items
    end

    def new
      @item = current_account.items.new
    end

    def create
      @item = current_account.items.new(set_params)

      if @item.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update
      if @item.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :edit
      end
    end

    def destroy
      if @item.destroy
        flash[:success] =  t :success
      else 
        flash[:danger] =  t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:item).permit(:name, :item_category_id, :description, :quantity, 
                                   :value_buy, :value_sell, :max_discount, :unit,
                                   :status, :observation)
    end

    def set_item
      @item = current_account.items.find(params[:id])
    end


  end
end