defmodule MyServiceWeb.HelloController do
  use MyServiceWeb, :controller

  def index(conn, _params) do
    text(conn, "Hello, World!")
  end
end
