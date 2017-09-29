defmodule BluemixTest do
  use ExUnit.Case
  doctest Bluemix

  test "greets the world" do
    assert Bluemix.hello() == :world
  end
end
