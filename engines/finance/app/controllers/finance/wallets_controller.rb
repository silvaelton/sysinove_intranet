require_dependency 'finance/application_controller'

module Finance
  class WalletsController < ApplicationController 
    before_action :set_wallets
    before_action :set_wallet, only: [:edit, :update, :destroy]

    def index
    end

    def new
      @wallet = current_account.wallets.new
    end

    def create
      @wallet = current_account.wallets.new(set_params)
      @wallet.save
    end

    def edit
    end

    def update
      @wallet.update(set_params)
    end

    def destroy
      @wallet.destroy
    end

    private

    def set_params
      params.require(:wallet).permit(:name, :description, :status)
    end

    def set_wallet
      @wallet = current_account.wallets.find(params[:id])
    end

    def set_wallets
      @wallets = current_account.wallets
    end

  end
end