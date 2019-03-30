defmodule RheaWeb.PageController do
  use RheaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create_account(conn, _params) do
    render(conn, "create_account.html")
  end
end
