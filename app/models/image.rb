class Image < ActiveRecord::Base
  belongs_to :space_listing

  mount_uploaders :image_url, PictureUploader

end
