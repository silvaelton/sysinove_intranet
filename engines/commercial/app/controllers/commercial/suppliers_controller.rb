require_dependency 'commercial/application_controller'

module Commercial
  class SuppliersController < ApplicationController 
    before_action :set_supplier, only: [:show, :edit, :update, :destroy]
    
    def index
      @suppliers = current_account.suppliers.order('id DESC')
    end

    def show
    end

    def new
      @supplier  = current_account.suppliers.new
      @supplier.supplier_contacts.build
    end

    def create
      @supplier  = current_account.suppliers.new(set_params)
      if @supplier.save
        flash[:success] = t :success
        redirect_to @supplier
      else
        render action: :new
      end
    end

    def edit
    end

    def update
      if @supplier.update(set_params)
        flash[:success] = t :success
        redirect_to @supplier
      else
        render action: :edit
      end
    end

    def destroy
      if @supplier.destroy
        flash[:success] = t :success
      else 
        flash[:danger]  = t :danger
      end

      redirect_to action: :index
    end

    private

    def set_params
      params.require(:supplier).permit(:supplier_category_id, :supplier_type, :cpf_cnpj,
                                     :personal_name, :fantasy_name, :email, :password,
                                     :cep, :state_id, :city, :address, :complement_address,
                                     :external, :observation, :company_name, :state_number, :city_number,
                                      supplier_contacts_attributes: [:name, :telephone, :telephone_secundary, :email,
                                                                   :_destroy, :id])
    end

    def set_supplier
      @supplier = current_account.suppliers.find(params[:id])
    end
    
  end
end