class UsersController < ApplicationController
  skip_before_filter :authenticate_user

  def new
    if signed_in?
      redirect_to welcome_index_url
    end
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.password = (0...6).map{ ('a'..'z').to_a[rand(26)] }.join 

    if @user.save
      session[:user_id] = @user.id
      redirect_to welcome_index_url, :notice => "Sign in OKI! Your password: #{@user.password}"
    else
      render :new
    end
  end
end
