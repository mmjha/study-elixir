# page100 연습문제 5-5
Enum.map [1, 2, 3, 4], &(&1 + 2)
Enum.each [1, 2, 3, 4], &(IO.inspect &1)
