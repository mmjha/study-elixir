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
    [ head | tail ] = Impl.pop(current)
    { :reply, head, tail }
  end

  def handle_cast({:push, delta}, current) do
    if is_integer(delta) and delta < 10 do
      System.halt(0)
    end

    if is_integer(delta) and delta == 10 do
      {:stop, :normal, current}
    else
      { :noreply, Impl.push(current, delta)}
    end
  end

  def format_status(_reason, [ _pdict, state ]) do
    [data: [{'State', "My current state is '#{inspect state}', and I'm happy"}]]
  end

  def terminate(reason, state) do
    IO.puts "Reason: #{inspect reason}; State: #{inspect state}"
  end

end
