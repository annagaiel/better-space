class Api::V1::BookingsController < ApplicationController

  def index
    if current_user
      @bookings = current_user.bookings
    end
  end

  def show
    @booking = Booking.find_by(id: params[:id])
  end

  def your_rented_spaces
    @approved_spaces = current_user.bookings.where("approved_status = ?", true)
    @pending_spaces = current_user.bookings.where("approved_status = ?", false)
    @rented_spaces = current_user.bookings
  end

  def toggle_approved_status
    @booking = Booking.find_by(id: params[:id])
    @booking.update_attributes(approved_status: !@booking.approved_status)
    redirect_to "/your_bookings", notice: "Booking approve status was update!"
  end

  def your_bookings
    @space_listings = current_user.space_listings
  end
end
