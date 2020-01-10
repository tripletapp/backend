defmodule TripletWeb.Router do
  use TripletWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: TripletWeb.Schema,
      interface: :playground

    forward "/", Absinthe.Plug, schema: TripletWeb.Schema
  end
end
