class SpaceListingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    # page_limit =  1
    # page_show_number = params[:show_number] || 2
    # if current_user
    #   @space_listings = current_user.space_listings.page(page_limit).per(page_show_number)
    # else
    #   @space_listings = SpaceListing.all
    # end
    @space_listings = SpaceListing.all
    render :index
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

  def destroy
    @space_listing.destroy
    redirect_to '/'
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
