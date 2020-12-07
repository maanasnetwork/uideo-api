defmodule UideoWeb.PageController do
  use UideoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
