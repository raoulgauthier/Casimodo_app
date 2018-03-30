class Photo < ApplicationRecord
  validates :photo, presence: true
  belongs_to :workorder
  mount_uploader :photo, PhotoUploader
end
