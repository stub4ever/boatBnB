class BookingsController < ApplicationController
  before_action :set_boat

  def new
    @booking = @boat.bookings.new
  end

  def create
    @booking = @boat.bookings.new(booking_params)
    if @booking.save
      redirect_to confirmation_trip_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :description)
  end

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end
end
