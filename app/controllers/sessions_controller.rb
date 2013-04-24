class SessionsController < ApplicationController
  skip_before_filter :authenticate_user

  def new
    if signed_in?
      redirect_to welcome_index_url
    end
    
    @user = User.new
  end

  def create
    @user = User.authenticate(params[:user][:name], params[:user][:password])

    if @user
      session[:user_id] = @user.id
      redirect_to welcome_index_url, :notice => "Sign in OKI!"
    else
      flash[:alert] = "UMAD?"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
