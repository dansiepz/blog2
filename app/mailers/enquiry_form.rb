class EnquiryForm < ActionMailer::Base
  default from: "dan@thecoderfactory.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_form.received.subject
  #
  def received(enquiry)
    @enquiry = enquiry

    mail(to: "dan@thecoderfactory.com", subject: "enquiry has been recieved DanSiepen.com")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_form.response.subject
  #
  def response(enquiry)
    @enquiry = enquiry

    mail(to: @enquiry.email, subject: "Thank you for your enquiry from DanSiepen.com :)")
  end
end
