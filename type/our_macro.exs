defmodule OurMacro do
  defmacro unless(expr, do: block) do
    quote do
      if !unquote(expr) do
        unquote(block)
      end
    end
  end
end

defmodule Test do
  def test do
    require OurMacro

    IO.inspect OurMacro.unless true, do: "Hi"
    IO.inspect OurMacro.unless false, do: "Hi"
  end
end

Test.test()
