defmodule DeckTest do
  use ExUnit.Case

  test "taking a card from the deck" do
    1..52
    |> Enum.each(fn _ ->
      assert is_integer(Deck.take_card())
    end)
  end
end
