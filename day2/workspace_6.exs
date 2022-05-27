defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(n) * 2
end

IO.puts Times.triple(3)
IO.puts Times.quadruple(2)

defmodule Numtest do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

IO.puts Numtest.sum(3)
IO.puts Numtest.gcd(6, 9)
