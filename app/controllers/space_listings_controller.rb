class SpaceListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @space_listings = current_user.space_listings
    render "list_view"
  end

  def new
    @space_listing = SpaceListing.new
  end

  def create
    @space_listing = SpaceListing.new(space_listing_params)
    @space_listing.user_id = current_user.id
    if @space_listing.save
      redirect_to @space_listing
    else
      render :new
    end
  end

  def show
    @space_listing = SpaceListing.find(params[:id])
  end

  def edit
    @space_listing = SpaceListing.find(params[:id])
  end

  private
    def space_listing_params
      params.require(:space_listing).permit(:title, :description,
      :day_rent,:monthly_rent,
      :space_type, :environment_type,
      :address, :city, :state, :zip_code,
      :size_width, :size_height, :size_length)
    end
end
