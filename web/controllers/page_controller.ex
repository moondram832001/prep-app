defmodule PrepBlog.PageController do
  use PrepBlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
