class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_account

  def current_account
    ::Account.find_by(code: 254789) rescue nil
  end

end
