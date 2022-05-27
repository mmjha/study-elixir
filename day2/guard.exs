defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x) do
    IO.puts "#{inspect(x)} is a list"
  end
  def what_is(x) when is_atom(x) do
    IO.puts "#{x} is a atom"
  end
end

Guard.what_is(99)
Guard.what_is(:cat)
Guard.what_is([1,2,3])

# defmodule Factorial do
#   def of(0), do: 1
#   def of(n), do n * of(n - 1)
# end

defmodule Factorial do
  def of(0), do: 1
  def of(n) when is_integer(n) and n > 0 do
    n * of(n-1)
  end
end

# Factorial.of(-3)
Factorial.of(3)
