
defmodule Chop do
  def guess(actual, a..b) do
    div_value = div(a + b, 2)
    IO.puts "Is It #{div_value}"
    if div_value == actual do
      IO.puts actual
    else
      if div_value > actual do
        guess(actual, a..div_value)
      else
        guess(actual, div_value..b)
      end
    end
  end
end

Chop.guess(273, 1..1000)
