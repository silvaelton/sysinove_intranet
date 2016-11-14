class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  helper_method :current_scope

  def current_scope
    params[:scope_id]
  end
end
