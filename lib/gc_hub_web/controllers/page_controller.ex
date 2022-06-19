defmodule GcHubWeb.PageController do
  use GcHubWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
