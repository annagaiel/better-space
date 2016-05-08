class SpaceListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @space_listings = current_user.space_listings
  end

  def new
    @space_listings = SpaceListing.new
  end

  private
  def space_listing_params
    params.require(:space_listing).permit(:title, :description,
    :address, :zip_code, :city, :state,
    :monthly_rent, :day_rent, :size_width, :size_height, :size_length)
  end
end
