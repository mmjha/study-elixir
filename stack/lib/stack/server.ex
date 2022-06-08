defmodule Stack.Server do
  use GenServer

  def start_link(current_number) do
    GenServer.start_link(__MODULE__, current_number, name: __MODULE__)
  end

  def push(delta) do
    GenServer.cast __MODULE__, {:push, delta}
  end

  def pop do
    GenServer.call __MODULE__, :pop
  end

  def set_list(new_list) do
    GenServer.cast __MODULE__, {:set_list, new_list}
  end

  def init(initial_list) do
    { :ok, initial_list }
  end

  def handle_call({:set_list, new_list}, _from, _current) do
    { :reply, new_list, new_list }
  end

  def handle_call(:pop, _from, current) do
    { head, tail } = List.pop_at(current, -1)
    { :reply, head, tail }
  end

  def handle_cast({:push, delta}, current) do
    { :noreply, current ++ [delta] }
  end

  def format_status(_reason, [ _pdict, state ]) do
    [data: [{'State', "My current state is '#{inspect state}', and I'm happy"}]]
  end

end
