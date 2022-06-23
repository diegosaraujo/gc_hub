defmodule GcHubWeb.FallbackController do
  use GcHubWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(GcHubWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
