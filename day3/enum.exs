list = Enum.to_list 1..5
IO.inspect list

IO.inspect Enum.concat([1,2,3], [4,5,6])
IO.inspect Enum.concat([1,2,3], 'abc')

IO.inspect Enum.map(list, &(&1 * 10))
IO.inspect Enum.map(list, &String.duplicate("*", &1))

IO.puts Enum.at(10..20, 3)
IO.puts Enum.at(10..20, 20)
IO.puts Enum.at(10..20, 20, :no_one_here)
IO.inspect Enum.filter(list, &(&1 > 2))

require Integer
IO.inspect Enum.filter(list, &Integer.is_even/1)
IO.inspect Enum.reject(list, &Integer.is_even/1)

IO.inspect Enum.sort ['there', 'was', 'a']
IO.inspect Enum.sort ["there", "was", "a"], &(String.length(&1) <= String.length(&2))
IO.puts Enum.max ['there', 'was', 'a']
IO.puts Enum.max_by ["there", "was", "a", "crooked"], &String.length/1

IO.puts Enum.reduce(["now", "is", "the", "time"], &(&1, &2) -> IO.puts &1)

# Enum.reduce(["now", "is", "the", "time"], fn word, longest ->
# end)
