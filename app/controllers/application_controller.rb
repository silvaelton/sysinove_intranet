class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
  def current_account
    ::Account.all.last rescue nil
  end

  def authenticate?
    if session[:internal_id].present? || session[:internal_master].present?
      true
    else
      true
      #redirect_to internal.new_session_path if controller_name != "sessions"
    end
  end

  def current_user
    current_account.staffs.find(session[:internal_id]) rescue nil
  end

  def current_user_master?
    session[:internal_master].present?
  end

  helper_method :current_account 
  helper_method :authenticate? 
  helper_method :current_user 
  helper_method :current_user_master

end
