## Transformación
# map
stream = Stream.map([1, 2, 3], fn x -> x * 2 end)
IO.inspect(Enum.to_list(stream))  # Resultado: [2, 4, 6]

# filter
stream = Stream.filter([1, 2, 3, 4, 5], fn x -> rem(x, 2) == 0 end)
IO.inspect(Enum.to_list(stream))  # Resultado: [2, 4]

# flat_map
stream = Stream.flat_map([1, 2, 3], fn x -> [x, x * 2] end)
IO.inspect(Enum.to_list(stream))  # Resultado: [1, 2, 2, 4, 3, 6]

# take
stream = Stream.take([1, 2, 3, 4, 5], 3)
IO.inspect(Enum.to_list(stream))  # Resultado: [1, 2, 3]

# drop
stream = Stream.drop([1, 2, 3, 4, 5], 2)
IO.inspect(Enum.to_list(stream))  # Resultado: [3, 4, 5]




## Fragmentación
# chunk_every
stream = Stream.chunk_every([1, 2, 3, 4, 5], 2)
IO.inspect(Enum.to_list(stream))  # Resultado: [[1, 2], [3, 4], [5]]

# chunk_while
stream = Stream.chunk_while([1, 2, 3, 4, 5], [], fn
  x, acc when x < 3 -> {:cont, acc ++ [x]}   # Acumula los valores menores que 3
  x, acc when x >= 3 -> {:cont, acc, [x]}    # Guarda el acumulador como chunk y comienza uno nuevo
end, fn
  acc -> {:cont, [acc]}  # Devuelve el acumulador final como un chunk
end)
IO.inspect(Enum.to_list(stream))
# Resultado esperado: [[1, 2], [3, 4, 5]] ?????
# Resultado obtenido: [[1, 2], [3], [4]]




## Combinación
# concat
stream1 = Stream.cycle([1, 2])
stream2 = Stream.cycle([3, 4])
combined = Stream.concat(stream1, stream2)
IO.inspect(Enum.take(combined, 6))
# Resultado esperado: [1, 2, 3, 4, 1, 2] ?????
# Resultado obtenido: [1, 2, 1, 2, 1, 2] ?????

# zip
stream1 = Stream.cycle([1, 2])
stream2 = Stream.cycle([3, 4])
zipped = Stream.zip(stream1, stream2)
IO.inspect(Enum.take(zipped, 4))  # Resultado: [{1, 3}, {2, 4}, {1, 3}, {2, 4}]




## Generadores
# Iterate
stream = Stream.iterate(1, fn x -> x + 2 end)
IO.inspect(Enum.take(stream, 5))
stream = Stream.iterate(1, &(&1 + 1))
IO.inspect(Enum.take(stream, 5))

#unfold
stream = Stream.unfold(0, fn x -> {x, x + 1} end)
IO.inspect(Enum.take(stream, 5))  # Resultado: [0, 1, 2, 3, 4]

# cycle
stream = Stream.cycle([1, 2, 3])
IO.inspect(Enum.take(stream, 5))  # Resultado: [1, 2, 3, 1, 2]
