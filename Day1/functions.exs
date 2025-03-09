# Funciones anónimas
suma = fn (a, b) -> a + b end
IO.puts(suma.(3,4))

cuadrado = fn x -> x*x end
IO.puts(cuadrado.(2))

comparar = fn
  0 -> "Es cero"
  x when x > 0 -> "Es positivo"
  x -> "Es negativo"
end

IO.puts(comparar.(0))    # Imprime: Es cero
IO.puts(comparar.(10))   # Imprime: Es positivo
IO.puts(comparar.(-5))   # Imprime: Es negativo

# Funciones nombradas
defmodule Matematica do
  def suma2(a, b) do
    a + b
  end
end

IO.puts(Matematica.suma2(5,3))


defmodule Clasificador do
  def tipo(0), do: "Es cero"
  def tipo(x) when x > 0, do: "Es positivo"
  def tipo(x), do: "Es negativo"
end

IO.puts(Clasificador.tipo(0))    # Imprime: Es cero
IO.puts(Clasificador.tipo(10))   # Imprime: Es positivo
IO.puts(Clasificador.tipo(-5))   # Imprime: Es negativo


# Funciones de una sola línea.
defmodule Saludo do
  def hola(nombre), do: "Hola, #{nombre}!"
end

IO.puts(Saludo.hola("Pedro")) # Imprime: Hola, Pedro!




# Funciones anónimas
triangle  = fn (base, height ) -> (base*height )/2 end
# Funciones nombradas
defmodule Area do
  def triangle_area(base, height) do
    (base*height)/2
  end

end
# Funciones de una sola línea.
defmodule Area2 do
  def triangle_area2(base, height), do: (base*height)/2
end

IO.puts(triangle.(5,4))
IO.puts(Area.triangle_area(5,4))
IO.puts(Area2.triangle_area2(5,4))




# Operador |>
# Lista original
numbers = [1, 2, 3, 4, 5]

# Definir un pipeline con el operador |>
result = numbers
|> Enum.filter(fn x -> rem(x, 2) == 0 end)  # Filtramos solo los números pares
|> Enum.map(fn x -> x * 2 end)              # Multiplicamos cada número por 2
|> Enum.sum()                               # Sumamos los números resultantes

IO.puts(result)                             # Imprime el resultado: 12 (2 + 4 + 6)


cadena = "hello world"
|> String.upcase()  # Convierte a mayúsculas
|> String.split()    # Separa la cadena en palabras
|> Enum.reverse()    # Invierte la lista de palabras
|> Enum.join(" ")    # Vuelve a unir las palabras con un espacio
IO.puts(cadena)
# Resultado: "WORLD HELLO"
