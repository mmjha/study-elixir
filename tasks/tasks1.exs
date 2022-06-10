defmodule Fib do
  def of(0), do: 0
  def of(1), do: 1
  def of(n), do: Fib.of(n-1) + Fib.of(n-2)
end


worker = Task.async(fn -> Fib.of(20) end)
results = Task.await(worker)
IO.puts results
