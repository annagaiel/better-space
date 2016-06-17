class AddIsFavoriteToSpaceListing < ActiveRecord::Migration
  def change
    add_column :space_listings, :is_favorite, :boolean, default: false
  end
end
