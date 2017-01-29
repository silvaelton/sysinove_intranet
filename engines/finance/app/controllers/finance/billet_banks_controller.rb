require_dependency 'finance/application_controller'

module Finance
  class BilletBanksController < ApplicationController 
    before_action :set_billet_banks
    before_action :set_billet_bank, only: [:edit, :update, :destroy]
    
    def index
    end

    def new
      @billet_bank = current_account.billet_banks.new
    end

    def create
      @billet_bank = current_account.billet_banks.new(set_params)
      @billet_bank.save
    end

    def edit
    end

    def update
      @billet_bank.update(set_params)
    end

    def destroy
      @billet_bank.destroy
    end

    private

    def set_params
      params.require(:billet_bank).permit(:name, :bank, :wallet, :convenant, :agency, :account)
    end

    def set_billet_bank
      @billet_bank = current_account.billet_banks.find(params[:id])
    end

    def set_billet_banks
      @billet_banks = current_account.billet_banks
    end
  end
end
   