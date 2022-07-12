defmodule Example do
  defmacro double_put(expr) do
    quote do
      IO.puts(unquote(expr))
      IO.puts(unquote(expr))
    end
  end
  defmacro double_puts(expr) do
    quote bind_quoted: [expr: expr] do
      IO.puts(expr)
      IO.puts(expr)
    end
  end
end


defmodule Test do
  require Example
  def test do
    IO.inspect Example.double_put(:os.system_time)
    IO.inspect Example.double_puts(:os.system_time)
  end
end

Test.test()
