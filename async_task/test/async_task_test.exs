defmodule AsyncTaskTest do
  use ExUnit.Case
  doctest AsyncTask

  test "test the macro" do
    assert Sample.hello("Marcel", 500) == "Hello: Marcel"
  end

  test "returns unkown when timer exceeds the timeout limit" do
    assert Sample.hello("Marcel", 5000) == "Hello: Unknown!"
  end

  test "unkown when no timer was given" do
    assert Sample.hello("Marcel", 5000) == "Hello: Unknown!"
  end
end
