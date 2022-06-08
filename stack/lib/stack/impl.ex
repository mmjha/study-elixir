defmodule Stack.Impl do
  def pop(current_list) do
    List.pop_at(current_list, -1)
  end
  def push(current_list, delta), do: current_list ++ [delta]
end
