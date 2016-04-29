defmodule Praveenperera.Router do
  use Praveenperera.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Praveenperera do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", Praveenperera do
    pipe_through :api

    post "send_email", PageController, :submit_form
  end

  # Other scopes may use custom stacks.
  # scope "/api", Praveenperera do
  #   pipe_through :api
  # end
end
