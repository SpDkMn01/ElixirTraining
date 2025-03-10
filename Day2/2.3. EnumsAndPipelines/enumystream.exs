resultado = [1, 2, 3, 4]
|> Enum.map(&(&1 * &1))  # Elevar al cuadrado [1, 4, 9, 16]
|> Enum.filter(&(&1 > 5))  # Filtrar mayores a 5 [9, 16]
|> Enum.sum()  # Sumar los resultados 25

IO.puts(resultado) # Imprime: 25



resultado = 1..100_000
|> Stream.map(&(&1 * 3))  # Multiplicar cada número por 3 (perezoso)
|> Stream.filter(&rem(&1, 2) == 0)  # Filtrar números pares
|> Enum.take(5)  # Tomar los primeros 5 resultados

IO.inspect(resultado) # Imprime: [6, 12, 18, 24, 30]



# Crear un Stream infinito de números, elevarlos al cuadrado y tomar los primeros 10
resultado = Stream.iterate(1, &(&1 + 1))
|> Stream.map(&(&1 * &1))  # Elevar al cuadrado
|> Enum.take(10)  # Tomar los primeros 10 resultados

IO.inspect(resultado) # Imprime: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
