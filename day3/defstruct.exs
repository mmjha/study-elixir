# (CompileError) defstruct.exs:4: cannot access struct Subscriber, the struct was not yet defined or the struct is being accessed in the same context that defines it
defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

s1 = %Subscriber{}
s2 = %Subscriber{ name: "Dave" }
s3 = %Subscriber{ name: "Mary", paid: true }
IO.puts s3.name

%Subscriber{name: a_name} = s3
IO.puts a_name

s4 = %Subscriber{ s3 | name: "Marie"}
IO.inspect s4
