class Api::V1::SpaceListingsController < ApplicationController

  def index
      @space_listings = SpaceListing.all  
  end
end
