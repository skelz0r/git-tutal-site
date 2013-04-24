class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?

  def signed_in?
    false
  end
end
