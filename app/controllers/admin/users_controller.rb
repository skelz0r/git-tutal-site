class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  # Toggle admin
  def update
    @user = User.find(params[:id]) 

    @user.admin = !@user.admin
    @user.save
  end
end
