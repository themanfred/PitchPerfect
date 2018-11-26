class UsersController < ApplicationController

  def dashboard
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :description, :photo,:email)
  end
end
