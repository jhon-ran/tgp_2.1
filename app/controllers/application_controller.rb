class ApplicationController < ActionController::Base
  #to test
  #before_action :authorized
  #before_action :authenticate_user, only: [:index]
  #before_action :require_login
  include SessionsHelper

  helper_method :current_user  

  # To test
  #helper_method :logged_in?
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end



  
end
