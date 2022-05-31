defmodule MyString do
  def each(str, func), do: _each(String.next_codepoint(str), func)

  defp _each({codepoint, rest}, func) do
    # IO.puts "#{codepoint}, #{rest}"
    func.(codepoint)
    _each(String.next_codepoint(rest), func)
  end

  defp _each(nil, _), do: []
end

MyString.each "aog", fn c -> IO.puts c end

IO.inspect String.slice "the cat on the mat", 4, 3
IO.inspect String.slice "the cat on the mat", -3, 3
IO.inspect String.split "the cat on the mat "
IO.inspect String.split "the cat on the mat ", "t"
