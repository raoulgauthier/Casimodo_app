class Workorder < ApplicationRecord
  belongs_to :manager,
      class_name: 'User'
  belongs_to :technician,
      class_name: 'User', optional: true
end
