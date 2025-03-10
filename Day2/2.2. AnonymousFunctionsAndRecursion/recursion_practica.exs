defmodule Matematica do
  def factorial(0), do: 1  # Caso base
  def factorial(n), do: n * factorial(n - 1)  # Llamada recursiva
end

IO.puts(Matematica.factorial(5)) # Imprime: 120




defmodule Recursion do
  def suma_lista([]), do: 0  # Caso base: lista vacía
  def suma_lista([head | tail]), do: head + suma_lista(tail)  # Llamada recursiva
end

IO.puts(Recursion.suma_lista([1, 2, 3, 4])) # Imprime: 10




defmodule Matematica2 do
  def factorial(n), do: factorial(n, 1)

  defp factorial(0, acumulador), do: acumulador  # Caso base
  defp factorial(n, acumulador), do: factorial(n - 1, n * acumulador)  # Recursión terminal
end

IO.puts(Matematica2.factorial(5)) # Imprime: 120




defmodule Fibonacci do
  def calcular(0), do: 0  # Caso base
  def calcular(1), do: 1  # Caso base
  def calcular(n), do: calcular(n - 1) + calcular(n - 2)  # Llamadas recursivas
end

IO.puts(Fibonacci.calcular(5)) # Imprime: 5




defmodule Transformar do
  def duplicar([]), do: []  # Caso base
  def duplicar([head | tail]), do: [head * 2 | duplicar(tail)]  # Llamada recursiva
end

IO.inspect(Transformar.duplicar([1, 2, 3])) # Imprime: [2, 4, 6]




defmodule Busqueda do
  def existe?([], _elemento), do: false  # Caso base: lista vacía
  def existe?([head | _tail], elemento) when head == elemento, do: true  # Elemento encontrado
  def existe?([_head | tail], elemento), do: existe?(tail, elemento)  # Buscar en el resto
end

IO.puts(Busqueda.existe?([1, 2, 3], 2)) # Imprime: true
IO.puts(Busqueda.existe?([1, 2, 3], 4)) # Imprime: false
