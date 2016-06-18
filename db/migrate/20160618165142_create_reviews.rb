class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user_id
      t.belongs_to :space_listing_id
      t.text :content

      t.timestamps null: true
    end
  end
end
