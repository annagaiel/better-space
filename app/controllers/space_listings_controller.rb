class SpaceListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    page_limit = params[:page] || 1

    if current_user
      @space_listings = current_user.space_listings.page(params[:page]).per(3)
    else
      @space_listings = SpaceListing.all.page(params[:page]).per(3)
    end
    # render "list_view"
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
      flash[:notice] = "Your images has been created."
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

  def destroy
    @space_listing.destroy
    redirect_to '/'
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
