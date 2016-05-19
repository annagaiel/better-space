class RenameListing < ActiveRecord::Migration
  def change
    rename_column :images, :space_listings_id, :space_listing_id
    remove_column :images, :user_id, :integer
  end
end
