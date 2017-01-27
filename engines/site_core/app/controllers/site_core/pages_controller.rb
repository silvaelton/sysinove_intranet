require_dependency 'site_core/application_controller'

module SiteCore
  class PagesController < ApplicationController 
    before_action :set_page, only: [:edit, :update, :destroy]

    def index
      @pages = current_account.pages
    end

    def new
      @page = current_account.pages.new
    end

    def create
      @page = current_account.pages.new(set_params)
      
      if @page.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update

      if @page.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end

    end

    def destroy

      if @page.destroy
        flash[:success] =  t :success
      else 
        flash[:danger] =  t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:page).permit(:name, :content, :publish)
    end

    def set_page
      @page = current_account.pages.find(params[:id])
    end

  end
end