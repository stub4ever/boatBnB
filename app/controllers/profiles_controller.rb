class ProfilesController < ApplicationController
  def show
    @boats = current_user.boats
    @bookings = current_user.bookings
    @trips = current_user.trips
  end

  def edit

  end

  def update
    current_user.update!(account_update_params)
    redirect_to profile_path
  end

  private

  def account_update_params
    params.require(current_user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :photo, :photo_cache)
  end
end

