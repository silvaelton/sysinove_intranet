require_dependency 'commercial/application_controller'

module Commercial
  class NewslettersController < ApplicationController
    before_action :set_newsletter, only: [:edit, :update, :destroy, :show]
    
    def index
      @newsletters = current_account.newsletters
    end

    def new
      @newsletter = current_account.newsletters.new
    end

    def create
      @newsletter = current_account.newsletters.new(set_params)
      
      if @newsletter.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end
    end

    def edit
    end

    def update
      if @newsletter.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :edit
      end
    end

    def destroy
      if @newsletter.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:newsletter).permit(:title, :content, :status)
    end

    def set_newsletter
      @newsletter = current_account.newsletters.find(params[:id]) rescue nil
    end
  end
end