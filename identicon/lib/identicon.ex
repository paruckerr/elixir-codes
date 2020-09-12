defmodule Identicon do
  @moduledoc """
  Documentation for `Identicon`.
  """

  @doc """
  Main sync all functions

  ## Examples

      iex(1)> Identicon.main('string')
      iex(2)> string

  """
  def main(input) do
    input
    |>hash_input
  end

  def hash_input(input) do
    :crypto.hash(:md5, input)
    |>:binary.bin_to_list
  end
end
