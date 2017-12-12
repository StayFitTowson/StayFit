class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :banned?
  protect_from_forgery with: :exception
  include SessionsHelper

  def banned?
    if current_user.present? && current_user.suspended == false
      log_out if logged_in?
      flash[:danger] = "This account has been suspended...."
      redirect_to root_url
    end
  end

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
