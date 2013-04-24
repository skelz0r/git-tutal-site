class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  before_filter :authenticate_user

  def signed_in?
    return !session[:user_id].nil?
  end

  def authenticate_user
    unless signed_in?
      redirect_to root_path
    end
  end

  def current_user
    User.find(session[:user_id])
  end
end
