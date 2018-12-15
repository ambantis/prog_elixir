defmodule ProgElixir.Chap6.Sum do
  def sum(0), do: 0
  def sum(n) when is_integer(n) and n > 0, do
    n + sum(n - 1)
  end
end
