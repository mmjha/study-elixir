IO.puts File.stream!("/usr/share/dict/words") |> Enum.max_by(&String.length/1)

IO.inspect Enum.map(1..10_000_000, &(&1+1))
IO.inspect Enum.map(1..10_000_000, &(&1+1)) |> Enum.take(5)
Stream.map(1..10_000_000, &(&1+1))

Stream.cycle(~w{green white}) |> Stream.zip(1..5) |> Enum.map(fn {class, value} -> "<tr class='#{class}'><td>#{value}</td></tr> \n" end) |> IO.puts
Stream.repeatedly(fn -> true end) |> Enum.take(3) |> IO.inspect
Stream.repeatedly(&:random.uniform/0) |> Enum.take(3) |> IO.inspect

Stream.iterate(0, &(&1 + 1)) |> Enum.take(5) |> IO.inspect
Stream.iterate(2, &(&1 + &1)) |> Enum.take(5) |> IO.inspect
Stream.iterate([], &[&1]) |> Enum.take(5) |> IO.inspect

Stream.unfold({0, 1}, fn {f1, f2} -> {f1, {f2, f1+f2}} end) |> Enum.take(15) |> IO.inspect
Stream.resource(fn -> File.open!("sample") end,
  fn file ->
    case IO.read(file, :line) do
      data when is_binary(data) -> {[data], file}
      _ -> {:halt, file}
    end
  end,
  fn file -> File.close(file) end)
