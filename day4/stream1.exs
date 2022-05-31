IO.inspect Enum.to_list [1,2,3,4] |> Stream.map(&(&1*&1)) |> Stream.map(&(&1+1)) |> Stream.filter(fn x -> rem(x,2) == 1 end)
