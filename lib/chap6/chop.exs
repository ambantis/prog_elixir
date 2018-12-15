defmodule ProgElixir.Chap6.Chop do
  @author "Alexandros Bantis"
  def guess(range, target) when is_integer(target) do
    lo = Enum.min(range)
    hi = Enum.max(range)

    if inbounds(lo, target, hi) do
      guess = mid(lo, hi)
      IO.puts("got #{target}, lo=#{lo}, hi=#{hi}, guess=#{guess}")
      iter(0, lo, hi, guess, target)
    else
      raise ArgumentError, message: "invalid range"
    end
  end

  defp inbounds(lo, target, hi) do
    if lo <= target and target <= hi do
      true
    else
      false
    end
  end

  defp iter(_, _, _, guess, target) when guess == target do
    IO.puts("Found #{target}!")
  end

  defp iter(n, _, _, _, _) when n > 10 do
    raise RuntimeError, message: "too many guesses"
  end

  defp iter(n, lo, hi, guess, target) when guess < target do
    IO.puts("guess #{guess}, too low!, lo=#{lo}, hi=#{hi}")
    nextGuess = mid(guess, hi)
    iter(n + 1, guess, hi, nextGuess, target)
  end

  defp iter(n, lo, hi, guess, target) when guess > target do
    IO.puts("guess #{guess}, too hi! lo=#{lo}, hi=#{hi}")
    nextGuess = mid(lo, guess)
    iter(n + 1, lo, guess, nextGuess, target)
  end

  defp mid(lo, hi), do: lo + div(hi - lo, 2)
end
