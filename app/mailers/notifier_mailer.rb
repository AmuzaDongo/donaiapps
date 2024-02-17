class NotifierMailer < ApplicationMailer
  default to: "dongamuza@gmail.com",
    from: "donaiapps@gmail.com"

  def simple_message(first_name, last_name, email, subject, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: subject,
      body: message
    )
  end
end
