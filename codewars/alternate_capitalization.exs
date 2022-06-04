defmodule Kata do
  def _capitalize([], _), do: []
  def _capitalize([head | tail], false), do: [head | _capitalize(tail, true)]
  def _capitalize([head | tail], true), do: [String.capitalize(head) | _capitalize(tail, false)]
  def capitalize(s) do
      [head | tail] = String.codepoints(s)
      s1 = [String.capitalize(head) | _capitalize(tail, false)]
      s2 = [head | _capitalize(tail, true)]
      [Enum.join(s1), Enum.join(s2)]
  end
end
