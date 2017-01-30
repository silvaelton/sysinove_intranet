require_dependency 'general/application_controller'

module General
  class AccountsController < ApplicationController
    before_action :set_account, only: [:edit,:show, :update,:destroy]

    def index
      @accounts = ::Account.all.order('created_at DESC')
    end

    def show
    end

    def new
      @account = ::Account.new
    end

    def create
      @account = ::Account.new(set_params)
      
      if @account.save
        flash[:success] =  t :success
        redirect_to account_path(@account)
      else
        render action: :new
      end
    end

    def edit
    end

    def update
      
      if @account.update(set_params)
        flash[:success] =  t :success
        redirect_to account_path(@account)
      else
        render action: :edit
      end

    end

    private

    def set_params
      params.require(:account).permit(:name, :email, :description, :subdomain, :domain, 
                                      :situation, :site_name, :site_description, 
                                      :site_meta_tags, :site_newsletter, :site_contact_form, 
                                      :site_layout, :facebook, :twitter, :username, :password)
    end

    def set_account
      @account = ::Account.find(params[:id])
    end

  end
end