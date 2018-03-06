fizz_buzz = fn
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

print_inputs = fn (a,b,c) ->
  IO.puts("Inputs: #{a}|#{b}|#{c}")
end

main = fn (a,b,c) ->
  print_inputs.(a,b,c)
  IO.puts(fizz_buzz.(a,b,c))
end

main.(0,0,0)
main.(1,0,3)
main.(1,2,3)