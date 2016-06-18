class RenameSpaceListingIdOfReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :space_listing_id_id, :space_listing_id
    rename_column :reviews, :user_id_id, :user_id
  end
end
