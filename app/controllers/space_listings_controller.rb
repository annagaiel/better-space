class SpaceListingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @space_listings = current_user.space_listings
  end

  def new
  end
end
