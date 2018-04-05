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

  def color
    if(status == "Open")
      "#c55e5e"
    elsif(status == "Scheduled")
      "#ffc107"
    elsif(status == "In progress")
      "#4173a7"
    elsif(status == "Closed")
      "#73c16b"
    end
  end
end
