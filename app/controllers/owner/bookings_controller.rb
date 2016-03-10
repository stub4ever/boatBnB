class Owner::BookingsController < ApplicationController
  def accept
  end

  def deny
  end

  def show
    @booking = Booking.find(params[:id])
  end
end
