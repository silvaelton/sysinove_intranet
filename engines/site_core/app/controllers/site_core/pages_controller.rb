require_dependency 'site_core/application_controller'

module SiteCore
  class NavsController < ApplicationController 
    before_action :set_nav, only: [:edit, :update, :destroy]

    def index
      @navs = current_account.navs
    end

    def new
      @nav = current_account.navs.new
    end

    def create
      @nav = current_account.navs.new(set_params)
      
      if @nav.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update

      if @nav.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end

    end

    def destroy

      if @nav.destroy
        flash[:success] =  t :success
      else 
        flash[:danger] =  t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:nav).permit(:name, :order, :nav_type, :publish, 
                                  :target, :page_id, :post_id, :url)
    end

    def set_nav
      @nav = current_account.navs.find(params[:id])
    end

  end
end