defmodule Praveenperera.PageController do
  use Praveenperera.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def send_email(conn, %{"avencera" => message}) do
    Praveenperera.AvenceraMailer.send_contact_email(
      message["name"],
      message["email"],
      message["company"],
      message["message"]
    )

    conn |> send_resp(201, "Success")
  end

  def send_email(conn, %{"message" => message}) do
    Praveenperera.PraveenMailer.send_contact_email(
      message["name"],
      message["email"],
      message["text"]
    )

    conn |> send_resp(201, "Success")
  end

  def send_email(conn, %{"oshie" => message}) do
    Praveenperera.OshieMailer.send_contact_email(
      message["name"],
      message["email"],
      message["number"]
    )

    conn |> send_resp(201, "Success")
  end
end
