defmodule MyList do
  def map([], _), do: []
  def map([head | tail], func) do
    [ func.(head) | map(tail, func) ]
  end
  def reduce([], value, _), do: value
  def reduce([head | tail], value, func) do
    reduce(tail,  func.(head, value), func)
  end
  def mapsum([], _func), do: []
  def mapsum(list, func) do
    reduce(map(list, func), 0, &(&1 + &2))
  end
  def recr([], value), do: value
  def recr([head | tail], value) do
    if value < head do
      value = head
      recr(tail, value)
    else
      recr(tail, value)
    end
  end
  def custom_max(list) do
    [head | tail] = list
    recr(tail, head)
  end
  # def caesar([], _), do: []
  # def caesar([head | tail], n) do
  #   s = head + n
  #   IO.puts s
  #   if s > 'z' do
  #     s = s - ('z' - 'a')
  #     IO.puts s
  #     [s | caesar(tail, n)]
  #   else
  #     [s | caesar(tail, n)]
  #   end
  # end
end

IO.puts MyList.mapsum [1,2,3], &(&1 * &1)
IO.puts MyList.custom_max [51,2,3,2476,53,323]
# IO.puts MyList.caesar 'abcz', 1
