class SpaceListingsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_listing, only: [:show, :edit, :update]

  def index
    page_limit = params[:page] || 1
    @space_listings = current_user.space_listings.page(params[:page]).per(3)
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
  end

  def edit
  end

  def update
    if @space_listing.update(space_listing_params)
      redirect_to @space_listing, notice: "Updated #{@space_listing.title}"
    else
      render :edit
    end
  end

  private
    def space_listing_params
      params.require(:space_listing).permit(:title, :description,
      :day_rent,:monthly_rent,
      :space_type, :environment_type,
      :address, :city, :state, :zip_code,
      :size_width, :size_height, :size_length)
    end

    def set_listing
      @space_listing = SpaceListing.find(params[:id])
    end
end
