class ChargesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    # Amount in cents
    @amount = (current_booking.price * 100).to_i

    customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Better Space Content',
    :currency    => 'usd'
    )

    redirect_to booking_path(current_booking), notice:"Thanks, your purchase was successful!"
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to "/bookings/new/?space_listing_id=#{@current_booking.space_listing_id}"
  end

  private

  def current_booking
    @current_booking ||= Booking.find(params[:booking_id])
  end
end
