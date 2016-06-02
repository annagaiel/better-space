class Api::V1::SpaceListingsController < ApplicationController

  def index
    page_limit = params[:page] || 1

    if current_user
      @space_listings = current_user.space_listings.page(params[:page]).per(3)
    else
      @space_listings = SpaceListing.all.page(params[:page]).per(3)
    end
  end
end
