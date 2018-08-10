defmodule Api.Router do
  use Plug.Router
  @suites ["Spades", "Clubs", "Diamonds", "Hearts"]
  @cards [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
  ]

  plug(:match)
  plug(:dispatch)

  get "/card" do
    card = Deck.take_card() |> convert()

    conn |> put_resp_content_type("text/plain") |> send_resp(200, card)
  end

  def convert(card) do
    suite = Enum.at(@suites, div(card, 13))
    face = Enum.at(@cards, rem(card, 13))

    "#{face} of #{suite}"
  end
end
