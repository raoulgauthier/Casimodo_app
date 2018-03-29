class Demo < ApplicationRecord
 after_create :send_email

  private

  def send_email
    UserMailer.demo_request(demo.email, demo.name, demo.company).deliver_now
  end

end
