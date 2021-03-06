defmodule RheaWeb.Router do
  use RheaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", RheaWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/create-account", PageController, :create_account
  end

  # Other scopes may use custom stacks.
  # scope "/api", RheaWeb do
  #   pipe_through :api
  # end
end
