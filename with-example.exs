values = [1, 2, 3]
# mean =  with count = Enum.count(values),
#             sum = Enum.sum(values) do
#           sum, count
#             end

# IO.puts mean

# mean = with(
#       count = Enum.count(values),
#       sum = Enum.sum(values)
# ) do
#     sum/count
# end

# IO.puts mean

mean =  with count = Enum.count(values),
            sum = Enum.sum(values),
        do: sum/count

IO.puts mean
