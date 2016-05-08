class SpaceListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @space_listings = current_user.space_listings
  end

  def new
    @space_listings = SpaceListing.new
  end

  def create
    @space_listings = SpaceListing.new(space_listing_params)
    if @space_listings.save
      redirect_to @space_listings
    else
      render "new"
    end
  end

  def show
    @space_listings = SpaceListing.find(params[:id])
  end

  private
    def space_listing_params
      params.require(:space_listing).permit(:title, :description,
      :address, :zip_code, :city, :state,
      :monthly_rent, :day_rent, :size_width, :size_height, :size_length)
    end
end
