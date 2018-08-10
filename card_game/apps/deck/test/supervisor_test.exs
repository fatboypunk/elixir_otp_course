defmodule Deck.SupervisorTest do
  use ExUnit.Case
  doctest Deck

  test "supervisor has a worker child" do
    assert [{Deck, _, :worker, [Deck]}] = Supervisor.which_children(Deck.Supervisor)
  end
end
