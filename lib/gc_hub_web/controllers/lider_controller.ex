defmodule GcHubWeb.LiderController do
  use GcHubWeb, :controller

  action_fallback GcHubWeb.FallbackController

  def index(conn, %{"hash" => hash}) do
    hash
    |> GcHub.fetch_lider()
    |> handle_response(conn, "index.json", :ok)
  end

  defp handle_response({:ok, lider}, conn, view, status) do
    conn
    |> put_status(status)
    |> render(view, lider: lider)
  end

  defp handle_response({:error, _changeset} = error, _conn, _view, _status), do: error
end
