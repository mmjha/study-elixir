defmodule Chain do
  def token do
    receive do
      {sender, msg} ->
        send sender, {:ok, "#{msg}"}
    end
  end
  def create_process([]), do: []
  def create_process([head | tail]) do
    pid = spawn(Chain, :token, [])
    send pid, {self(), head}
    receive do
      {:ok, message} -> IO.puts message
    end
    create_process(tail)
  end
  def run(list) do
    create_process(list)
  end
end
