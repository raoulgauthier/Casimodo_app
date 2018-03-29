class Photo < ApplicationRecord
  belongs_to :workorder
  mount_uploader :photo, PhotoUploader
end
