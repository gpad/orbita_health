defmodule OrbitaHealth.PageController do
  use OrbitaHealth.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
