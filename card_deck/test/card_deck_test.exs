defmodule CardDeckTest do
  use ExUnit.Case
  doctest CardDeck

  test "taking a card from the deck" do
    1..52
    |> Enum.each(fn _ ->
      assert is_integer(CardDeck.take_card())
    end)
  end
end
