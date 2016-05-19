class Image < ActiveRecord::Base
  belongs_to :space_listing

  mount_uploader :image_url, PictureUploader

end
