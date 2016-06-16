class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :space_listing

  validates :move_in, presence: true
  validates :move_out, presence: true
  validates :price, presence: true

  before_create do
    validateAvailableDates
  end

  def validateAvailableDates
    match = Booking.where({space_listing_id: self.space_listing_id, approved_status: true}).where("move_out > ?", self.move_in).count
    if match > 0
      return false
    else
      return true
    end
  end
end
