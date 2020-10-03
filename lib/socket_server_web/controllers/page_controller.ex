defmodule SocketServerWeb.PageController do
  use SocketServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
