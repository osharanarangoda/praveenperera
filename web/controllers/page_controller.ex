defmodule Praveenperera.PageController do
  use Praveenperera.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def submit_form(conn, params) do
    Praveenperera.PraveenMailer.send_contact_email(params["message"]["from_name"], params["message"]["from_email"], params["message"]["text"])
    conn |> send_resp(201, "Success")
  end

end
