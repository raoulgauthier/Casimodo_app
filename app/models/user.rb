class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable



  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :invitable

  # validates :name, presence: true
  # validates :user_type, presence: true


  def workorders
      if self.user_type == "technician"
        Workorder.where(technician_id: self.id)
      elsif self.user_type == "manager"
        Workorder.where(manager_id: self.id)

      end
    end
end
