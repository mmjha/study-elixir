b = with [a | _] <- [1, 2, 3], do: "a : #{a}"
c = with [a | _] <- nil, do: "a : #{a}"

IO.puts b
IO.puts c
