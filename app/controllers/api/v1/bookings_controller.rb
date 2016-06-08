class Api::V1::BookingsController < ApplicationController

  def index
    if current_user
      @bookings = current_user.bookings
    end
  end

  def show
    @booking = Booking.find_by(id: params[:id])
  end

end
