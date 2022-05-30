IO.inspect [1,2,3] ++ [4,5,6]
IO.inspect List.flatten([[1, 2], [[3]]])

IO.inspect List.foldl([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)
IO.inspect List.foldr([1,2,3], "", fn value, acc -> "#{value}(#{acc})" end)

list = [1, 2, 3]
IO.inspect List.replace_at(list, 2, "buckle my shoe")

kw = [{:name, "Dave"}, {:likes, "Programming"}, {:where, "Dallas", "TX"}]
IO.inspect List.keyfind(kw, "Dallas", 1)
IO.inspect List.keyfind(kw, "TX", 2)
IO.inspect List.keyfind(kw, "TX", 1)
IO.inspect List.keyfind(kw, "TX", 1, "No city called TX")
kw = List.keydelete(kw, "TX", 2)
IO.inspect kw
kw = List.keyreplace(kw, :name, 0, {:first_name, "Dave"})
IO.inspect kw
