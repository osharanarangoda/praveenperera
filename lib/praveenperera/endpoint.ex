defmodule Praveenperera.Endpoint do
  use Phoenix.Endpoint, otp_app: :praveenperera

  socket("/socket", Praveenperera.UserSocket)

  # Serve at "/" the static files from "priv/static" directory.
  #
  # You should set gzip to true if you are running phoenix.digest
  # when deploying your static files in production.
  plug(
    Plug.Static,
    at: "/",
    from: :praveenperera,
    gzip: false,
    only: ~w(css fonts images js files favicon.ico robots.txt)
  )

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    socket("/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket)
    plug(Phoenix.LiveReloader)
    plug(Phoenix.CodeReloader)
  end

  plug(Plug.RequestId)
  plug(Plug.Logger)

  plug(
    Corsica,
    allow_headers: ["content-type"],
    origins:
      ~w(http://lankanovels.com http://www.lankanovels.com https://praveenperera.com https://avencera.com http://localhost:8080)
  )

  plug(
    Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison
  )

  plug(Plug.MethodOverride)
  plug(Plug.Head)

  plug(
    Plug.Session,
    store: :cookie,
    key: "_praveenperera_key",
    signing_salt: "vqS7wsOX"
  )

  plug(Praveenperera.Router)
end
