defmodule Solution do

  def solution(array) do
    array
    |> List.flatten
    |> Enum.sort
  end

end
