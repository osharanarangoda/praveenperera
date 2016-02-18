defmodule Praveenperera.PageController do
  use Praveenperera.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def jeff(conn, _params) do
    render conn, "jeff.html"
  end
end
