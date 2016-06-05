class SpaceListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :booking_request]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    page_limit = params[:page] || 1

    if current_user
      @space_listings = current_user.space_listings.page(params[:page]).per(3)
    else
      @space_listings = SpaceListing.all.page(params[:page]).per(3)
    end
  end

  def list_view
    page_limit = params[:page] || 1

    if current_user
      @space_listings = current_user.space_listings.page(params[:page]).per(3)
    else
      @space_listings = SpaceListing.all.page(params[:page]).per(3)
    end
  end

  def new
    @space_listing = SpaceListing.new
  end

  def create
    @space_listing = SpaceListing.new(space_listing_params)
    @space_listing.user_id = current_user.id
    if @space_listing.save
      if params[:images]
        params[:images].each { |image|
          @space_listing.images.create(image_url: image)
        }
      end
      @images = @space_listing.images
      redirect_to edit_space_listing_path(@space_listing), notice: "Saved #{@space_listing.title}"
    else
      render :new
    end
  end

  def show
    @images = @space_listing.images
  end

  def edit
    if current_user.id == @space_listing.user.id
      @images = @space_listing.images
    else
      redirect_to root_path, notice: "You don't have permission."
    end
  end

  def update
    if @space_listing.update(space_listing_params)
      if params[:images]
        params[:images].each { |image|
          @space_listing.images.create(image_url: image)
        }
      end
      redirect_to edit_space_listing_path(@space_listing), notice: "Updated #{@space_listing.title}"
    else
      render :edit
    end
  end

  def destroy
    @space_listing.destroy
    redirect_to '/'
  end

  def booking_request
    @space_listings = current_user.space_listings
  end

  private
    def space_listing_params
      params.require(:space_listing).permit(:title, :description,
      :day_rent,:monthly_rent,
      :space_type, :environment_type,
      :size_width, :size_height, :size_length,
      :street_number, :route, :city,
      :state, :zip_code, :country,
      :latitude, :longitude,
      {images: []})
    end

    def set_listing
      @space_listing = SpaceListing.find(params[:id])
    end
end
