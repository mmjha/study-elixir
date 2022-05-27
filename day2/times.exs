defmodule Times do
  def double(n) do
    n * 2
  end
end

Times.double(4)
Times.double(123)
Times.double("cat")

defmodule Times do
  def double(n), do: n * 2
end

def double(n), do: n * 2
IO.puts double.(3)

def greet(greeting, name), do: (
  IO.puts greeting
  IO.puts "How're you doing, #{name}?"
)

greet.("Hi", "Jane")
