defmodule ExampleWeb.PageController do
  use ExampleWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, %{"type" => type}) do
    from u in String.to_atom(type), select: u.title
    render conn, "index.html"
  end

  def __schema__(_) do
    IO.puts "Hello, world!"
  end
end

#defmodule :"assets/static/images/arbitrary_rce.png\0" do
#  def __schema__(_) do
#    IO.puts("\n=== REMOTE CODE EXECUTION ===\n")
#  end
#end
