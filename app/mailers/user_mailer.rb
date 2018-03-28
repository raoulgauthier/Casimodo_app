class UserMailer < ApplicationMailer

  default from: "rarajr@hotmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.demo_request.subject
  #
  def demo_request
    @greeting = "Hi"

    mail to: "rarajr@hotmail.com", subject: "new demo demand"
  end
end
