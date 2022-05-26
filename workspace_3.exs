# page95 연습문제 5-4
prefix = fn n1 -> (fn n2 -> "#{n1} #{n2}" end) end
mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
