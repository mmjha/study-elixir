require Integer
defmodule CustomEnum do
  def all?([], _), do: []
  def all?([head | tail], func) do
    [func.(head) | all?(tail, func)]
  end

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []
  def filter([head | tail], condition) do
    if &Integer.is_even do
      IO.puts head
      [head | filter(tail, condition)]
    else
      [filter(tail, condition)]
    end
  end
end

IO.inspect CustomEnum.all?([1,2,3,4,5], &(&1 < 4))
IO.inspect CustomEnum.each([1,2,3,4,5], fn x -> IO.puts(x) end)
IO.inspect CustomEnum.filter([1,2,3,4,5], &Integer.is_even/1)
