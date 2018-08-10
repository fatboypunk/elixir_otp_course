defmodule Deck.Application do
  use Application

  def start(_type, _args) do
    CardDeck.Supervisor.start_link()
  end
end
