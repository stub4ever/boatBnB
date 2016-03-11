class Owner::BookingsController < ApplicationController
  before_action :find_booking, except: [:index]

  def accept
    @booking.update(status: "Booking accepted")
    redirect_to owner_bookings_path
  end

  def deny
    @booking.update(status: "Booking denied")
    redirect_to owner_bookings_path
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end
end

