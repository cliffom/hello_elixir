defmodule HelloElixirWeb.UsersController do
  use HelloElixirWeb, :controller

  def show(conn, params) when map_size(params) == 0 do
    conn
    |> render("show.json", params: %{params: params})
  end

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
