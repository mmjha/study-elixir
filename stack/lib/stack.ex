defmodule Stack do

  @server Stack.Server

  def start_link(current_list) do
    GenServer.start_link(@server, current_list, name: @server)
  end

  def push(delta) do
    GenServer.cast(@server, {:push, delta})
  end

  def pop do
    GenServer.call(@server, :pop)
  end

  def set_list(new_list) do
    GenServer.cast(@server, {:set_list, new_list})
  end

end
