require_dependency 'customer/application_controller'

module Customer
  class ClientDocumentsController < ApplicationController 
    before_action :set_document, only: [:show, :destroy, :edit, :update]
    def index
      @documents = apply_scopes(current_account.client_documents).all
    end

    def new
      @document = current_account.client_documents.sender.new
    end

    def show
    end
    
    def create
      @document = current_account.client_documents.sender.new(set_params)

      if @document.save 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :new
      end
    end

    def edit
    end

    def update
      if @document.update(set_params) 
        flash[:success] = t :success
        redirect_to action: :index
      else 
        render action: :edit
      end
    end

    def destroy
      if @document.destroy
        flash[:success] = t :success
      else
        flash[:danger] = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:client_document).permit(:client_id, :description, :title, :file_path)
    end

    def set_document
      @document = current_account.client_documents.find(params[:id])
    end
    
  end
end