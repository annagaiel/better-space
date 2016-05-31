class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :space_listing

  validates :move_in, presence: true
  validates :move_out, presence: true
end
