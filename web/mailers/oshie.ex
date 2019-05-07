defmodule Praveenperera.OshieMailer do

  use Mailgun.Client, domain: Application.get_env(:praveenperera, :o_mailgun_domain),
                      key:    Application.get_env(:praveenperera, :o_mailgun_key)

  @to Application.get_env(:praveenperera, :o_email)

  def send_contact_email(name, email, number, country, to \\ @to) do
    send_email to: to,
               from: email,
               subject: "New Lanka Novels Customer Submission",
               html: """
                <p><b>Name:</b>#{name}</p>
                <p><b>Email:</b>#{email}</p>
                <p><b>Phone Number:</b>#{number}</p>
                <p><b>Country:</b>#{country}</p>
               """
  end
end
