people = [
  %{ name: "Grumpy",    height: 1.24 },
  %{ name: "Dave",      height: 1.88 },
  %{ name: "Dopey",     height: 1.32 },
  %{ name: "Shaquille", height: 2.16 },
  %{ name: "Sneezy",    height: 1.28 }
]

IO.inspect(for person = %{ height: height } <- people, height > 1.5, do: person)

%{2 => state} = %{1 => :ok, 2 => :error}
IO.puts state

# %{ item => :ok } = %{ 1 => :ok, 2 => :error }

data = %{ name: "Dave", state: "TX", likes: "Elixir" }
IO.inspect (for key <- [ :name, :likes ] do
  %{ ^key => value } = data
  value
end)

m = %{ a: 1, b: 2, c: 3 }
m1 = %{ m | b: "two", c: "three" }
m2 = %{ m1 | a: "one" }

IO.inspect m
IO.inspect m1
IO.inspect m2
