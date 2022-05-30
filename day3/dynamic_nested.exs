nested = %{
  buttercup: %{
    actor: %{
      first: "Robin",
      last: "wright"
    },
    role: "pricess"
  },
  westley: %{
    actor: %{
      first: "Cary",
      last: "Elwis"
    },
    role: "farm boy"
  }
}

IO.inspect get_in(nested, [:buttercup])
IO.inspect get_in(nested, [:buttercup, :actor])
IO.inspect get_in(nested, [:buttercup, :actor, :first])
IO.inspect put_in(nested, [:westley, :actor, :last], "Elwes")
