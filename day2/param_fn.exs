times_2 = fn n -> n * 2 end
apply = fn (fun, value) -> fun.(value) end
IO.puts apply.(times_2, 5)

# iexㅇ서 실행
list = [1, 3, 5, 7, 9]
Enum.map list, fn elem -> elem * 2 end
Enum.map list, fn elem -> elem * elem end
Enum.map list, fn elem -> elem > 6 end
