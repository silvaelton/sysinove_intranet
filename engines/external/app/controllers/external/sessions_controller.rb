require_dependency 'external/application_controller'

module External
  class SessionsController < ApplicationController
    layout 'external_session'

    def new
      @session = ::External::Session.new
    end

    def create
      @session = ::External::Session.new(set_params)

      if @session.valid? && @session.authorize?(current_account)
        session[:external_id] = @session.id
        redirect_to external.root_path
      else
        render action: :new
      end

    end

    def destroy
      session[:external_id] = nil

      redirect_to external.root_path
    end

    private

    def set_params
      params.require(:session).permit(:email, :password)
    end
    
  end
end
