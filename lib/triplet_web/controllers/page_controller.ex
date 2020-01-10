defmodule TripletWeb.PageController do
  use TripletWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
