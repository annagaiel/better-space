class ChangeSpaceTypeAndEnvironmentTypeOfSpaceListing < ActiveRecord::Migration
  def change
    change_column :space_listings, :space_type, :string
    change_column :space_listings, :environment_type, :string
  end
end
