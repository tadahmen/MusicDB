class Artist < ActiveRecord::Base
  has_many :songs #so now you can say: Artist.sons
  mount_uploader :picture, UploadPictureUploader
end
