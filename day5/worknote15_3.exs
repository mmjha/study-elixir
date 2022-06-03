defmodule Processes do
  def run do
    # spawn_link(Processes, :child, [self()])
    spawn_monitor(Processes, :child, [self()])
    :timer.sleep(500)
    Processes.loop_receive
  end

  def loop_receive do
    receive do
      message ->
        IO.puts "Message: #{message}"
        Processes.loop_receive
    after 10000 -> IO.puts "All messages received."
    end
  end

  def child(parent) do
    send parent, "Hello!"
    raise RuntimeError
  end
end

Processes.run
