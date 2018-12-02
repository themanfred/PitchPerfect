class UsersController < ApplicationController
  def profile
    @user = current_user
    @pitchs = Pitch.where(id: @user.pitch_ids)

  end

  def setuser
    @user = User.pitch
  end
end
