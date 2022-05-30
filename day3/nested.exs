defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", serverity: 1
end

# report = %BugReport{owner: %Customer{name: "Dave", company: "Pragmatic"}, details: "broken"}
# IO.puts report.owner.company

# report = %BugReport{ report | owner: %Customer{ report.owner | company: "PragProg" }}
