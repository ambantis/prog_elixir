defmodule ProgElixir.Chap6.Times do
  def double(n), do: times(n, 2)
  def triple(n), do: times(n, 3)
  def quadruple(n), do: times(n, 4)

  defp times(n, p), do: n * p
end
