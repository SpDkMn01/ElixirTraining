# Función pura para calcular el cuadrado de un número
defmodule Matematicas1 do
  def cuadrado(x) do
    x * x
  end
end
IO.puts(Matematicas1.cuadrado(4)) # Imprime: 16

# efectos secundarios

# Función que modifica el estado externo
# contador = 0
#
# def incrementar do
#   contador = contador + 1
# end
# Esto genera impredecibilidad y dificulta el razonamiento sobre el código



cadena = "Hola"
nueva_cadena = cadena <> ", Elixir!"

# Imprimir cadenas
IO.puts(cadena)        # Imprime: Hola
IO.puts(nueva_cadena)  # Imprime: Hola, Elixir!

# Función para calcular el promedio de una lista de números
defmodule Matematicas2 do
  def promedio(lista) do
    Enum.sum(lista) / length(lista)
  end
end

# Definir lista
numeros = [10, 20, 30, 40]

# Llamar a la función
IO.puts(Matematicas2.promedio(numeros)) # Imprime: 25.0
