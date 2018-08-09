defmodule Deck.Application do
  use Application

  def start(_type, _args) do
    CardDeck.start_link()
  end
end
