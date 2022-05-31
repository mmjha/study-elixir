IO.inspect Enum.into 1..5, []
# IO.inspect Enum.into 1..5, [ 100, 101 ]
Enum.into IO.stream(:stdio, :line), IO.stream(:stdio, :line)
