require_dependency 'customer/application_controller'

module Customer
  class ClientsController < ApplicationController 
    before_action :set_client, only: [:show, :edit, :update, :destroy]
    def index
      @clients = current_account.clients.order('id DESC')
    end

    def show
    end

    def new
      @client  = current_account.clients.new
      @client.client_contacts.build
    end

    def create
      @client  = current_account.clients.new(set_params)
      if @client.save
        flash[:success] = t :success
        redirect_to @client
      else
        render action: :new
      end
    end

    def edit
    end

    def update
      if @client.update(set_params)
        flash[:success] = t :success
        redirect_to @client
      else
        render action: :edit
      end
    end

    def destroy
      if @client.destroy
        flash[:success] = t :success
      else 
        flash[:danger]  = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:client).permit(:client_category_id, :client_type, :cpf_cnpj,
                                     :personal_name, :fantasy_name, :email, :password,
                                     :cep, :state_id, :city, :address, :complement_address,
                                     :external, :observation, :company_name, :state_number, :city_number,
                                      client_contacts_attributes: [:name, :telephone, :telephone_secundary, :email,
                                                                   :_destroy, :id])
    end

    def set_client
      @client = current_account.clients.find(params[:id])
    end
    
  end
end