map = %{ name: "Dave", likes: "Programming", where: "Dallas" }
IO.inspect Map.keys map
IO.inspect Map.values map
IO.puts map[:name]
IO.puts map.name
IO.inspect Map.drop map, [:where, :likes]
map2 = Map.put map, :also_likes, "Ruby"
IO.inspect Map.keys map2

person = %{ name: "Dave", height: 1.88 }
%{ name: a_name } = person
IO.puts a_name

%{ name: _, height: _ } = person
%{ name: "Dave" } = person
# %{ name: _, weight: _ } = person
