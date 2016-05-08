class CreateSpaceListings < ActiveRecord::Migration
  def change
    create_table :space_listings do |t|
      t.string :title
      t.string :address
      t.string :zip_code
      t.string :city
      t.string :state
      t.integer :space_type
      t.integer :environment_type
      t.belongs_to :user
      t.text :description
      t.decimal :monthly_rent
      t.decimal :day_rent
      t.integer :size_width
      t.integer :size_height
      t.integer :size_length
      t.boolean :accessibility

      t.timestamps null: true
    end
  end
end
