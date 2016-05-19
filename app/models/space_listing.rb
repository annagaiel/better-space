class SpaceListing < ActiveRecord::Base
  belongs_to :user
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :day_rent, presence: true
  validates :monthly_rent, presence: true
  validates :space_type, presence: true
  validates :environment_type, presence: true
  validates :size_length, presence: true
  validates :size_width, presence: true
  validates :size_height, presence: true

end
