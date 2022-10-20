defmodule Discuss.AuthController do
  use DiscussWeb, :controller
  plug Ueberauth

  def callback(conn, params) do
    IO.inspect(conn.assigns)
    IO.inspect(params)
  end
end
