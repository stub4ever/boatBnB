class ProfilesController < ApplicationController
  def show
    @boats = current_user.boats
    @bookings = current_user.bookings
    @trips = current_user.trips
  end
end

