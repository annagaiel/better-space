class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @space_listing = SpaceListing.find_by(id: params[:space_listing_id])
  end

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    start_date = params[:booking][:move_in]
    end_date = params[:booking][:move_out]
    @booking.move_in = parse_date(start_date)
    @booking.move_out = parse_date(end_date)
    between_days = days_left(@booking.move_in, @booking.move_out)
    if @booking.save
      render :show
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(:move_in, :move_out,
    :total, :price, :space_listing_id)
  end

  def parse_date(date)
    month = date.split("/")[0]
    day = date.split("/")[1]
    year = date.split("/")[2]
    DateTime.parse("#{day}/#{month}/#{year}")
  end

  def days_left(move_in, move_out)
    end_date = move_out.strftime("%Y-%m-%d")
    start_date = move_in.strftime("%Y-%m-%d")
    Date.parse(end_date) - Date.parse(start_date).to_i
  end
end
