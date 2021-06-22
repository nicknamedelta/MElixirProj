defmodule InmanaWeb.WelcomeController do
  use InmanaWeb, :controller

  alias Inmana.Welcomer

  def index(conn, params) do
    params
    |> Welcomer.welcome()
    |> handle_response(conn)
  end

  defp handle_response({:ok, message}, conn), do: render_request(conn, message, :ok)

  defp handle_response({:error, message}, conn), do: render_request(conn, message, :bad_request)

  defp render_request(conn, message, status) do
    conn
    |> put_status(status)
    |> json(%{message: message})
  end
end
