defmodule Stack.Server do
  use GenServer
  alias Stack.Impl

  def init(initial_list) do
    { :ok, initial_list }
  end

  def handle_call({:set_list, new_list}, _from, _current) do
    { :reply, new_list, new_list }
  end

  def handle_call(:pop, _from, current) do
    { head, tail } = Impl.pop(current)
    { :reply, head, tail }
  end

  def handle_cast({:push, delta}, current) do
    { :noreply, Impl.push(current, delta) }
  end

  def format_status(_reason, [ _pdict, state ]) do
    [data: [{'State', "My current state is '#{inspect state}', and I'm happy"}]]
  end

end
