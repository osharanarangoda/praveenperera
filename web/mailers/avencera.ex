defmodule Praveenperera.AvenceraMailer do
  use Mailgun.Client,
    domain: Application.get_env(:praveenperera, :mailgun_domain),
    key: Application.get_env(:praveenperera, :mailgun_key)

  @to "hello@avencera.com"

  def send_contact_email(name, email, company, message, to \\ @to) do
    send_email(
      to: to,
      from: email,
      subject: "Avencera.com Contact Submission -- Name:  #{name}
        | Email: #{email} | Company: #{company}",
      html: "<p> #{message} </p>"
    )
  end
end
