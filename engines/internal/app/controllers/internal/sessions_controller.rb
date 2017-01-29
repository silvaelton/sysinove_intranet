require_dependency 'internal/application_controller'

module Internal
  class SessionsController < ApplicationController 
    layout 'application_session'

    def new
      @session = ::Internal::Session.new
    end

    def create
      @session = ::Internal::Session.new(set_params)

      if @session.valid? && @session.authorize?(current_account)
        session[:internal_master] = @session.master
        session[:internal_id]     = @session.id

        redirect_to internal.root_path
      else
        render action: :new
      end
    end

    def destroy
      session[:internal_master] = nil
      session[:internal_id]     = nil

      redirect_to internal.new_session_path
    end

    private

    def set_params
      params.require(:session).permit(:username, :password)
    end

  end
end
