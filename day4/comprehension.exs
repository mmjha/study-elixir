min_maxed = [{1,4}, {2,3}, {10,15}]
IO.inspect for {min, max} <- min_maxed, n <- min..max, do: n

first8 = [1,2,3,4,5,6,7,8]
IO.inspect for x <- first8, y <- first8, x >= y, rem(x*y, 10) == 0, do: {x, y}

reports = [ dallas: :hot, minneapolis: :cold, dc: :muggy, la: :smoggy ]
IO.inspect for { city, weather } <- reports, do: { weather, city }

IO.puts for << ch <- "hello" >>, do: ch
IO.inspect for << ch <- "hello" >>, do: <<ch>>

name = "Dave"
for name <- ["cat", "dog"], do: String.upcase(name)
IO.puts name

IO.inspect for x <- ~w{ cat dog }, into: %{}, do: { x, String.upcase(x) }
IO.inspect for x <- ~w{ cat dog }, into: Map.new, do: { x, String.upcase(x) }
IO.inspect for x <- ~w{ cat dog }, into: %{"ant" => "ANT"}, do: { x, String.upcase(x) }
IO.inspect for x <- ~w{ cat dog }, into: IO.stream(:stdio, :line), do: "<<#{x}>>\n"
