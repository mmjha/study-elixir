defmodule StringHelpers do
  @type word() :: String.t()

  @spec long_word?(word()) :: boolean()
  def long_word?(word) when is_binary(word) do
    String.length(word) > 8
  end
end

IO.inspect StringHelpers.long_word?("hello!@!@")
