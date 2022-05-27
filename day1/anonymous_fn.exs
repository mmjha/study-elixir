sum = fn (a, b) -> a + b end
IO.puts sum.(1, 2)

greet = fn -> IO.puts "Hello" end
IO.puts greet.()


f1 = fn a, b -> a * b end
IO.puts f1.(5, 6)

f2 = fn -> 99 end
IO.puts f2.()
