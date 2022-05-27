func1 = fn -> (fn -> "Hello" end) end
other = func1.()
other.()
IO.puts other.()
