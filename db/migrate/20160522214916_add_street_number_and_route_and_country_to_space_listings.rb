class AddStreetNumberAndRouteAndCountryToSpaceListings < ActiveRecord::Migration
  def change
    add_column :space_listings, :street_number ,:string
    add_column :space_listings, :route ,:string
    add_column :space_listings, :country ,:string
  end
end
