defmodule Stack.Impl do
  def pop(current_list), do: current_list
  def push(current_list, delta), do: [delta | current_list]
end
