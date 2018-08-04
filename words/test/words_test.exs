defmodule WordsTest do
  use ExUnit.Case
  doctest Words

  test "count the numbor of words on a list of line" do
    assert %{
             "annihilated" => 1,
             "sedateness" => 1,
             "citizens" => 6,
             "roots" => 1,
             "dissect" => 1,
             "destroys" => 2,
             "attempting" => 2,
             "reminder" => 4,
             "supervision" => 1,
             "ledge" => 4,
             "bandy" => 3,
             "handleless" => 1,
             "onelet" => 1
           } = Words.count(File.stream!("test/support/files/war_and_peace.txt"), Stream)
  end
end
