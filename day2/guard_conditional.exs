defmodule Factorial do
  def of(0), do: 1
  def of(n) do
    if n < 0 do
      raise "factorial called on a negative number"
    else
      n * of(n-1)
    end
  end
end

IO.puts Factorial.of(5)
IO.puts Factorial.of(-5)
