defmodule AnonymousFunctions do
  def list_concat(a, b) do
    a ++ b
  end

  def sum(a, b, c) do
    a + b + c
  end

  def pair_tuple_to_list({ a, b }) do
    [a, b]
  end
end