defmodule RheaWeb.PageController do
  use RheaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
