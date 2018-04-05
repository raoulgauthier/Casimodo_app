class Workorder < ApplicationRecord
  belongs_to :manager,
      class_name: 'User'
  belongs_to :technician,
      class_name: 'User', optional: true
  has_many :photos

  mount_base64_uploader :signature, PhotoUploader

  STATUS = ["Open", "Scheduled", "In progress", "Closed"]
  DURATIONS = ["00h15","00h30","00h45","01h00","01h15","01h30","01h45","02h00","02h15","02h30","02h45","03h00","03h15","03h30","03h45","04h00","04h15","04h30","04h45","05h00"]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
