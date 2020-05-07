defmodule HelloElixirWeb.UsersView do
  use HelloElixirWeb, :view

  def render("show.json", %{params: params}) do
    params
  end
end
