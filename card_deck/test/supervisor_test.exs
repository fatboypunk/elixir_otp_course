defmodule CardDeck.SupervisorTest do
  use ExUnit.Case
  doctest CardDeck

  test "supervisor has a worker child" do
    assert [{CardDeck, _, :worker, [CardDeck]}] = Supervisor.which_children(CardDeck.Supervisor)
  end
end
