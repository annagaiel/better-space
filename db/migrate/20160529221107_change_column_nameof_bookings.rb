class ChangeColumnNameofBookings < ActiveRecord::Migration
  def change
    rename_column :bookings, :space_listing_id_id, :space_listing_id
  end
end
