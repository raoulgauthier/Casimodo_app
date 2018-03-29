class UserMailer < ApplicationMailer

  default from: "casimodo.be@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.demo_request.subject
  #
  def demo_request(email, name, company)
    @email = email
    @name = name
    @company = company
    mail(to: "casimodo.be@gmail.com", subject: "new demo demand")
  end

def workorder_alert(workorder)

  @workorder = workorder

    mail(to: @workorder.technician.email , subject: "Alert ==> New Workorder")
  end
end
