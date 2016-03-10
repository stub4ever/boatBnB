class BookingsController < ApplicationController
  before_action :set_boat, only: [:new, :create]

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = @boat.bookings.new
  end

  def create
    @booking = @boat.bookings.new(booking_params)
    @booking.renter = current_user
    @booking.owner = @boat.owner

    if @booking.save
      redirect_to boat_booking_path(@booking.boat_id, @booking.id)
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
