defmodule Stack.Server do
  use GenServer

  def init(initial_list) do
    { :ok, initial_list }
  end

  def handle_call({:set_list, new_list}, _from, _current) do
    { :reply, new_list, new_list }
  end

  # def handle_call({:factors, number}, _, _) do
  #   { :reply, { :factors_of, number, factors(number)}, [] }
  # end

  def handle_call(:pop, _from, current) do
    { head, tail } = List.pop_at(current, -1)
    { :reply, head, tail }
  end


end
