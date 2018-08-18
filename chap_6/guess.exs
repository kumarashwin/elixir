defmodule Chop do
  def is_it(n), do: IO.puts("Is it #{n}?")
  def it_is(n) do
    is_it n
    IO.puts("It is #{n}!")
  end

  def is_between(n, _, n), do: it_is(n)
  def is_between(n, min.._, guess) when guess > n do
    is_it guess
    is_between(n, min..guess, div(guess - min, 2) + min)
  end
  def is_between(n, _..max, guess) when guess < n do
    is_it guess
    is_between(n, guess..max, guess + div(guess, 2))
  end 

  def get_mean_index(range), do: (range |> Enum.count |> div(2)) - 1
  def get_midpoint(range), do: range |> Enum.at(range |> get_mean_index)
  def guess(actual, range), do: actual |> is_between(range, range |> get_midpoint)
end