defmodule Examples do
  defstruct first: nil, last: nil

  @type t(first, last) :: %Examples{first: first, last: last}
  @type t :: %Examples{first: integer, last: integer}
end

defmodule Test do
  @spec sum_product(integer, Examples.t()) :: integer
  def sum_product(a, params) do
    for i <- params.first..params.last do
      i
    end
    |> Enum.map(fn el -> el * a end)
    |> Enum.sum()
    |> round()
  end
end

IO.inspect Test.sum_product(3, %{first: nil, last: 2})
