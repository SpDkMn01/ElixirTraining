## Para transformaciones

# Mapeo
lista = [1, 2, 3, 4]
cuadrados = Enum.map(lista, fn x -> x * x end)
IO.inspect(cuadrados) # Imprime: [1, 4, 9, 16]

# Filtro
lista = [1, 2, 3, 4]
mayores_a_dos = Enum.filter(lista, fn x -> x > 2 end)
IO.inspect(mayores_a_dos) # Imprime: [3, 4]

# Reduce
suma = Enum.reduce([1, 2, 3, 4], 0, fn x, acc -> x + acc end)
IO.puts(suma) # Imprime: 10

# each
Enum.each([1, 2, 3], fn x -> IO.puts(x) end)

# reverse
volteado = Enum.reverse([1, 2, 3])
IO.inspect(volteado)

# take
dos_primeros = Enum.take([1, 2, 3, 4], 2)
IO.inspect(dos_primeros)

# drop
menos_dos_primeros = Enum.drop([1, 2, 3, 4], 2)
IO.inspect(menos_dos_primeros)




## Para obtener valores
# count
count = Enum.count([1, 2, 3])
IO.puts(count)

# any?
flag = Enum.any?([1, 2, 3], fn x -> x == 2 end)
IO.puts(flag)

# all?
flag2 = Enum.all?([1, 2, 3], fn x -> x > 0 end)
IO.puts(flag2)

# find
find = Enum.find([1, 2, 3, 4], fn x -> x > 2 end)
IO.puts(find)

# max
max = Enum.max([1, 2, 3])
IO.puts(max)

#min
min = Enum.min([1, 2, 3])
IO.puts(min)




## Para agrupar y ordenar
# group_by
group = Enum.group_by([1, 2, 3, 4], fn x -> rem(x, 2) end)
IO.inspect(group)

# sort
sort = Enum.sort([3, 1, 2, 4, 10, 7, 6, 8, 5, 9])
IO.inspect(sort)

# uniq
uniq = Enum.uniq([1, 2, 2, 3])
IO.inspect(uniq)




## Para colecciones numericas
# sum
sum = Enum.sum([1, 2, 3])
IO.puts(sum)

# product
product = Enum.product([1, 2, 3])
IO.puts(product)

# min_by
min_by = Enum.min_by([1, 2, 3], fn x -> rem(x, 2) end)
IO.puts(min_by)

# max_by
max_by = Enum.max_by([1, 2, 3], fn x -> rem(x, 2) end)
IO.puts(max_by)




## Para manejo de datos complejos
# concat
concat = Enum.concat([1, 2], [3, 4])
IO.inspect(concat)

# zip
zip = Enum.zip([1, 2, 3], [4, 5, 6])
IO.inspect(zip)

# chunk_every
chunk_every = Enum.chunk_every([1, 2, 3, 4, 5], 2)
IO.inspect(chunk_every)




## Para búsqueda y coincidencia
# member?
flag3 = Enum.member?([1, 2, 3], 2)
IO.puts(flag3)




## Para reducción
Enum.reduce_while([1, 2, 3], 0, fn x, acc ->
  if x > 2, do: {:halt, acc}, else: {:cont, acc + x}
end)




## Otros
# at
posicion = Enum.at([1, 2, 3], 1)
IO.puts(posicion)

# slice
sub_lista = Enum.slice([1, 2, 3, 4], 1, 2)
IO.inspect(sub_lista)

# with_index
elementos_con_indice = Enum.with_index(["a", "b", "c"])
IO.inspect(elementos_con_indice)
