defmodule ApiAuth.Router do
  use ApiAuth.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiAuth do
    pipe_through :api

    resources "/todos", TodoController, except: [:new, :edit]
    resources "/users", UserController, only: [:create]
    resources "/sessions", SessionController, only: [:create]
  end
end
