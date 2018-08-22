defmodule MyList do
  def mapsum(_list, _func, value \\ 0) 
  def mapsum([], _func, value), do: value 
  def mapsum([ head | tail ], func, value), do: mapsum(tail, func, value + func.(head))

  def max_list(list, max \\ 0) 
  def max_list([], max), do: max 
  def max_list([ head | tail ], max) when head > max, do: max_list(tail, head)   
  def max_list([ head | tail ], max) when head < max, do: max_list(tail, max)

  def span(from, to) when from === to, do: [to]
  def span(from, to) when from < to, do: [from | from + 1 |> span(to)]
  def span(from, to) when from > to, do: IO.puts "Hell is this shit!?"
end