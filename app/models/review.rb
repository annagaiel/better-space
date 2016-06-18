class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :space_listing

  validates_presence_of :content
  validates_presence_of :score
end
