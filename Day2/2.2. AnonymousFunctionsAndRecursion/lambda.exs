# Definición de una función lambda
suma = fn (a, b) -> a + b end

# Llamada a la función lambda
IO.puts(suma.(2, 3)) # Imprime: 5



# Definir una función lambda que calcule el cuadrado
cuadrado = fn x -> x * x end

IO.puts(cuadrado.(4)) # Imprime: 16




# Definir una función lambda con múltiples cláusulas
clasificar = fn
  0 -> "Es cero"
  x when x > 0 -> "Es positivo"
  x -> "Es negativo"
end

IO.puts(clasificar.(0))    # Imprime: Es cero
IO.puts(clasificar.(5))    # Imprime: Es positivo
IO.puts(clasificar.(-3))   # Imprime: Es negativo




# Elevar al cuadrado todos los elementos de una lista
lista = [1, 2, 3, 4]
cuadrados = Enum.map(lista, fn x -> x * x end)

IO.inspect(cuadrados) # Imprime: [1, 4, 9, 16]




# Filtrar números mayores que 2 en una lista
mayores_que_dos = Enum.filter([1, 2, 3, 4], fn x -> x > 2 end)

IO.inspect(mayores_que_dos) # Imprime: [3, 4]




[1, 2, 3, 4]
|> Enum.map(fn x -> x * x end)
|> Enum.filter(fn x -> x > 5 end)
|> IO.inspect() # Imprime: [9, 16]




# Recursividad
# Función recursiva para contar hacia atrás
defmodule Contador do
  def cuenta_atras(0) do
    IO.puts("¡Listo!")
  end

  def cuenta_atras(n) do
    IO.puts(n)
    cuenta_atras(n - 1)
  end
end

Contador.cuenta_atras(5)




# Crear una función que encapsule la recursión
suma_lista = fn suma_lista, lista, acumulador ->
  case lista do
    [] -> acumulador
    [head | tail] -> suma_lista.(suma_lista, tail, acumulador + head)
  end
end

# Llamada inicial a la lambda pasando la misma función como argumento
IO.puts(suma_lista.(suma_lista, [1, 2, 3, 4], 0))
