class ProfilesController < ApplicationController
  def show
    @boats = current_user.boats
    @bookings = current_user.bookings
  end

  def edit

  end

  def update
    @user = current_user.update!(account_update_params)
    redirect_to profile_boat_path
  end

  private

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :photo, :photo_cache)
  end
end

