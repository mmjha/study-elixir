defmodule LineSigil do
  @doc """
  여러 줄의 문자열을 받아 각 줄에 있는 문자열을 리스트로 반환하는 '~l' 시길을 구현한다.
  """

  def sigil_l(lines, _opts) do
    lines |> String.trim_trailing |> String.split("\n")
  end
end

defmodule Example do
  import LineSigil
  def lines do
    ~l"""
    line 1
    line 2
    and another line in #{__MODULE__}
    """
  end
end

IO.inspect Example.lines
