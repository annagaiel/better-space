class HomesController < ApplicationController
  def index
    @space_listings = SpaceListing.all
    @recent_listings = SpaceListing.order("created_at DESC").limit(4)
    @top_hosts = User.order(:created_at).limit(4)
    @garage_count = SpaceListing.where("space_type": "Garage").count
    @house_count = SpaceListing.where("space_type": "House").count
    @outdoor_count = SpaceListing.where("environment_type": "Outdoor").count
    @indoor_count = SpaceListing.where("environment_type": "Indoor").count
  end
end
