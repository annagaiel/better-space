class AlterListingsAddLatAnd < ActiveRecord::Migration
  def change
    add_column :space_listings, :latitude ,:float
    add_column :space_listings, :longitude ,:float
  end
end
