defmodule Times do
  def by(n), do: &(n * &1)

  def double(n), do: by(2).(n)
  def triple(n), do: by(3).(n)
  def quadruple(n), do: by(4).(n)
end