defmodule ProgElixir.Chap6.GCD do
  def gcd(x, 0), do: x
  def gcd(x, y) when is_integer(x) and is_integer(y), do
    gcd(y, rem(x, y))
  end
end
