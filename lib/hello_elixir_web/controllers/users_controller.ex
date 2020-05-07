defmodule HelloElixirWeb.UsersController do
  use HelloElixirWeb, :controller

  def show(conn, %{"id" => _id} = params) do
    method = "getUserByID"

    conn
    |> render("show.json", params: %{method: method, params: params})
  end

  def show(conn, %{"email" => _email} = params) do
    method = "getUserByEmail"

    conn
    |> render("show.json", params: %{method: method, params: params})
  end
end
