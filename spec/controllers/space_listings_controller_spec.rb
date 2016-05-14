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
      user = FactoryGirl.create(:user)
      sign_in user

      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "space_listings#create action" do
    it "should create a new space_listing in the database" do
      user = FactoryGirl.create(:user)
      sign_in user

      space_listing = FactoryGirl.create(:space_listing)
      space_listing.title = 'Wonderful Space'

      expect(response).to have_http_status(:success)
      listing = SpaceListing.last
      expect(listing.title).to eq("Wonderful Space")
    end
  end

end
