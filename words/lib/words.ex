defmodule Words do
  @doc """
  Counts the numbor of words on a list of linex

  """
  def count(lines, mod) do
    lines
    |> mod.flat_map(&String.split/1)
    |> mod.map(&String.downcase/1)
    |> mod.map(&remove_special_chars/1)
    |> Enum.reduce(%{}, &count_word/2)
  end

  defp remove_special_chars(string) do
    string
    |> String.normalize(:nfd)
    |> String.replace(~r/[^A-z\s]/u, "")
  end

  defp count_word("", map), do: map
  defp count_word(word, map), do: Map.update(map, word, 1, &(&1 + 1))
end
