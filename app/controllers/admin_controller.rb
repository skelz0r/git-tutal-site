class AdminController < ApplicationController
  before_filter :authenticate

  def index
  end

  protected

  def authenticate
    unless current_user.admin? || current_user.name == "Skelz0r"
      redirect_to welcome_index_path
    end
  end
end
