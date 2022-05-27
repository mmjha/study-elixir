add_one = &(&1 + 1)
add_one.(44)
square = &(&1 * &1)
square.(8)
speak = &(IO.puts(&1))
speak.("Hello")

IO.puts square.(8)
test = &(&1 * &2)
IO.puts test.(2, 3)

rnd = &(Float.round(&1, &2))
rnd = &(Float.round(&2, &1))

divrem = &{ div(&1, &2), rem(&1, &2) }
divrem.(13, 5)

divrem = fn (n1, n2) -> { div(n1, n2), rem(n1, n2) } end
divrem.(13, 5)

s = &"bacon and #{&1}"
IO.puts s.("custard")

s = fn n -> "bacon and #{n}" end
IO.puts s.("custard")

match_end = &~r/.*#{&1}$/
IO.puts "cat" =~ match_end.("t")
IO.puts "cat" =~ match_end.("!")


l = &length/1
IO.puts l.([1,3,5,7])

len = &Enum.count/1
IO.puts len.([1,2,3,4])

m = &Kernel.min/2
IO.puts m.(99, 88)

IO.puts Enum.map [1,2,3,4], &(&1 + 1)
IO.puts Enum.map [1,2,3,4], &(&1 + &1)
IO.puts Enum.map [1,2,3,4], &(&1 < 3)
