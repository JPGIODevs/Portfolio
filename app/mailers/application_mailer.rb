class ApplicationMailer < ActionMailer::Base
  default to: "jpgiodevelopments@gmail.com"
  default from: "no-reply@jpgiodevelopments.com"

  def contact_form(name, email, message)
    @name = name
    @email = email
    @message = message

    mail subject: 'Contact Form'
  end
end
