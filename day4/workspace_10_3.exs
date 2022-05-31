defmodule MyList do
  def span(from, to) do
    if from != to do
      [ from | span(from + 1, to)]
    else
      [ from ]
    end
  end
  def prime(_, _, 2), do: false
  def prime(_, 1, _), do: true
  def prime(n, m, cnt) do
    if rem(n, m) == 0 do
      cnt = cnt + 1
      prime(n, m - 1, cnt)
    else
      prime(n, m - 1, cnt)
    end
  end
end

IO.inspect MyList.span(1, 3)
n = 50
IO.inspect for x <- MyList.span(2, n), do: x
IO.inspect for x <- MyList.span(2, n), MyList.prime(x, x, 0) == true, do: x

# page183 10-4
