IO.puts File.read!("/usr/share/dict/words") |> String.split |> Enum.max_by(&String.length/1)
s = Enum.map [1,3,5,7], &(&1 + 1)
IO.inspect s
s = Stream.map [1,3,5,7], &(&1 + 1)
IO.inspect s
IO.inspect Enum.to_list s

squares = Stream.map [1,2,3,4], &(&1 * &1)
plus_ones = Stream.map squares, &(&1+1)
odds = Stream.filter plus_ones, fn x -> rem(x,2) == 1 end
IO.inspect Enum.to_list odds
