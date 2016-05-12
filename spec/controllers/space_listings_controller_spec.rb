require 'rails_helper'

RSpec.describe SpaceListingsController, type: :controller do

  describe "space_listings#index action" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "space_listings#new action" do
    it "should show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "space_listings#create action" do
    it "should create a new space_listing in the database" do
      post :create, space_listing: {
          title: 'Wonderful Space',
          description: 'Best place to store items',
          day_rent: 60,
          monthly_rent: 100,
          space_type: 'Garage',
          environment_type: 'Indoor',
          size_length: 9,
          size_width: 10,
          size_height: 7
      }
      expect(response).to redirect_to space_listings_path
      listing = SpaceListing.last
      expect(listing.title).to eq("Wonderful Space")
    end
  end

end
