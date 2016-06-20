class BookingsController < ApplicationController

  def index
    if current_user
      @bookings = current_user.bookings
    end
  end

  def new
    @booking = Booking.new
    @space_listing = SpaceListing.find_by(id: params[:space_listing_id])
  end

  def create
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.price = params[:price]
    @booking.space_listing_id = params[:space_listing_id]
    @booking.approved_status = false
    start_date = params[:move_in]
    end_date = params[:move_out]
    @booking.move_in = parse_date(start_date)
    @booking.move_out = parse_date(end_date)

    if @booking.save
      begin
      token = params[:stripeToken]
      @amount = (@booking.price * 100).to_i
      customer = Stripe::Customer.create(
      :email       => params[:stripeEmail],
      :source      => token
      )
      charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Better Space Content',
      :currency    => 'usd'
      )
      rescue Stripe::CardError => e
        flash[:message] = e
      end
      redirect_to booking_path(@booking), notice:"Thanks, your purchase was successful!"
    else
      redirect_to "/bookings/new/?space_listing_id=#{@booking.space_listing_id}", alert: "Date was already booked!"
    end
  end

  def show
    @booking = Booking.find(params[:id])
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

  private
  def booking_params
    params.require(:booking).permit(:move_in, :move_out, :total, :price, :space_listing_id,
     :card_number, :card_month, :card_code, :stripeToken, :stripeEmail)
  end

  def parse_date(date)
    month = date.split("/")[0]
    day = date.split("/")[1]
    year = date.split("/")[2]
    DateTime.parse("#{day}/#{month}/#{year}")
  end
end
