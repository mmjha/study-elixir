center = fn list ->
  (for x <- list, do: IO.puts x)
end
center.(["cat", "zebra", "elephant"])

defmodule MyString do
  def capitalize_sentences(string) do
    Enum.join((for x <- String.split(string), do: String.capitalize(x)), " ")
  end
end

IO.puts MyString.capitalize_sentences("oh. a DOG. woof.")

# page205 11-7
