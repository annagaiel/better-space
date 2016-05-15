class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.string :caption
      t.belongs_to :space_listings
      t.belongs_to :user

      t.timestamps null: true
    end
  end
end
