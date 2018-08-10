defmodule CardDeck.Supervisor do
  use Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_) do
    childeren = [worker(CardDeck, [])]

    Supervisor.init(childeren, strategy: :one_for_one)
  end
end
