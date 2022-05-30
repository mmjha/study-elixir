set1 = 1..5 |> Enum.into(MapSet.new)
set2 = 3..8 |> Enum.into(MapSet.new)
IO.puts MapSet.member? set1, 3
IO.inspect MapSet.union set1, set2
IO.inspect MapSet.difference set1, set2
IO.inspect MapSet.difference set2, set1
IO.inspect MapSet.intersection set2, set1

options = [ {:width, 72}, {:style, "light"}, {:style, "print"} ]
IO.inspect List.last options
IO.inspect Keyword.get_values options, :style
