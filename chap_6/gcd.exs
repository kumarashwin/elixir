defmodule GCD do
  def of(x, 0),
    do: x
  def of(0, y),
    do: y
  def of(x, y) when x < y,
    do: of y, x 
  def of(x, y),
    do: of y, rem(x, y)
end