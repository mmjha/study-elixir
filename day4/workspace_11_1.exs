defmodule Anagram do
  def ascii([]), do: true
  def ascii([head | tail]) do
    if head >= 0 and head <=126 do
      ascii(tail)
    else
      false
    end
  end
  def anagrams?(word1, word2) do
    sort_string(word1) == sort_string(word2)
  end

  def sort_string(string) do
    string
    |> String.downcase()
    |> String.graphemes()
    |> Enum.sort()
  end
end

IO.puts Anagram.anagrams?("test","estt")
IO.puts Anagram.ascii('testsease~343$#%$')
IO.puts Anagram.ascii('γβ')

# page193 11-4
