class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user
  helper_method :admin?

  before_filter :authenticate_user

  def signed_in?
    return !session[:user_id].nil?
  end

  def admin?
    return signed_in? && (current_user.name == "Skelz0r" || current_user.admin?)
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
