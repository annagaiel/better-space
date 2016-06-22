class Api::V1::SpaceListingsController < ApplicationController

  def index
    @search_term = ''
    if params[:search_term]
      @space_listings = SpaceListing.where("zip_code = ?", params[:search_term])
      @search_term = params[:search_term]
    else
      @space_listings = SpaceListing.all
    end
  end
end
