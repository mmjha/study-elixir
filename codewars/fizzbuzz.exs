defmodule FizzBuzz do
  def _fizzbuzz(n) when rem(n, 15) == 0, do: "FizzBuzz"
  def _fizzbuzz(n) when rem(n, 5) == 0, do: "Buzz"
  def _fizzbuzz(n) when rem(n, 3) == 0, do: "Fizz"
  def _fizzbuzz(n), do: n
  def fizzbuzz(n) do
    for x <- 1..n, do: _fizzbuzz(x)
  end
end
