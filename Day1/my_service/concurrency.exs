defmodule Concurrent do
  require Logger
  def send_requests(n) do
    Enum.each(1..n, fn _ ->
      Task.async(fn ->
        Logger.info("Here!")
        HTTPoison.get!("http://localhost:4000/hello")
        Logger.info("END")
      end)
    end)
  end
end

# Run 2 requests
Concurrent.send_requests(2)
