defmodule Users do
  def test do
    dave = %{name: "Dave", state: "TX", likes: "programming"}
    case dave do
      %{state: _some_state} = person ->
        IO.puts "You are cleared to enter the Foo Bar, #{person.name}"
      _ ->
        IO.puts "Sorry, no admisson"
    end
  end
end

Users.test
