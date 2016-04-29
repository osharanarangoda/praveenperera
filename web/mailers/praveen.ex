defmodule Praveenperera.PraveenMailer do

  use Mailgun.Client, domain: Application.get_env(:praveenperera, :mailgun_domain),
                      key:    Application.get_env(:praveenperera, :mailgun_key)

  @to "me@praveenperera.com"

  def send_contact_email(name, email, message) do
    send_email to: @to,
               from: email,
               subject: "Website Contact Form Submission -- Name:  #{name} | Email: #{email}",
               html: "<p> #{message} </p>"
  end

end
