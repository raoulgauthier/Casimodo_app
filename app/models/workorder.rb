class Workorder < ApplicationRecord
  belongs_to :manager,
      class_name: 'User'
  belongs_to :technician,
      class_name: 'User', optional: true
  has_many :photos

  mount_base64_uploader :signature, PhotoUploader

  STATUS = ["Open", "Scheduled", "In progress", "Closed"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
