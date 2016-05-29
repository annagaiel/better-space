class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :space_listing_id
      t.belongs_to :user
      t.boolean :approved_status
      t.datetime :move_in
      t.datetime :move_out
      t.decimal :total, precision: 8, scale: 2
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: true
    end
  end
end
