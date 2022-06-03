defmodule Link1 do
  import :timer, only: [ sleep: 1 ]

  def sad_function do
    # IO.puts(123)
    sleep 500
    exit(:boom)
  end

  def run do
    pid = spawn(Link1, :sad_function, [])
    # send pid, {self()}
    receive do
      msg ->
        IO.puts "MESSAGE RECEIVED: #{inspect msg}"
      after 1000 ->
        IO.puts "Noting happend as far as I am concerned"
    end
  end
end

Link1.run
