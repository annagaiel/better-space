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
    @recent_listings = SpaceListing.order("created_at DESC").limit(4)
    @top_hosts = User.order(:created_at).limit(4)
    @garage_count = SpaceListing.where("space_type": "Garage").count
    @house_count = SpaceListing.where("space_type": "House").count
    @outdoor_count = SpaceListing.where("environment_type": "Outdoor").count
    @indoor_count = SpaceListing.where("environment_type": "Indoor").count
  end

  def list_view
    @space_listings = SpaceListing.all
    @recent_listings = SpaceListing.order("created_at DESC").limit(4)
    @top_hosts = User.order(:created_at).limit(4)
    @garage_count = SpaceListing.where("space_type": "Garage").count
    @house_count = SpaceListing.where("space_type": "House").count
    @outdoor_count = SpaceListing.where("environment_type": "Outdoor").count
    @indoor_count = SpaceListing.where("environment_type": "Indoor").count
  end

  def new
    @space_listing = SpaceListing.new
  end

  def create
    @space_listing = SpaceListing.new(space_listing_params)
    @space_listing.user_id = current_user.id
    @space_listing.address  = @space_listing.address
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
    @review = Review.new
    @reviews = @space_listing.reviews
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

  def toggle_favorite
    @space_listing = SpaceListing.find_by(id: params[:id])
    favorite_space =  Favorite.where(space_listing_id: @space_listing.id, user_id: current_user.id).count
    if favorite_space > 0
      favorite = Favorite.find_by(space_listing_id: @space_listing.id, user_id: current_user.id)
      favorite.destroy
      redirect_to "/list_view", alert: "#{@space_listing.title} was removed to favorites"
    else
      Favorite.create(space_listing_id: @space_listing.id, user_id: current_user.id)
      redirect_to "/list_view", notice: "#{@space_listing.title} was added to favorites"
    end
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
