defmodule ProgElixirTest do
  use ExUnit.Case
  doctest ProgElixir

  test "greets the world" do
    assert ProgElixir.hello() == :world
  end
end
