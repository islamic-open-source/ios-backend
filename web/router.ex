defmodule Ios.Router do
  use Ios.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Ios do
    pipe_through :api
  end
end
