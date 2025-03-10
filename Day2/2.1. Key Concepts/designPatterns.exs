# Pipe
# Sin pipe
# resultado = String.upcase(String.trim("  elixir  "))

# Con pipe
"  elixir  "
|> String.trim()
|> String.upcase()
|> IO.puts()
# IO.puts(resultado) # Imprime: ELIXIR


# Calcular el promedio de una lista de números usando pipe
# promedio = [1, 2, 3, 4]
[1, 2, 3, 4]
|> Enum.sum()
|> Kernel./(length([1, 2, 3, 4]))
|> IO.puts()
# IO.puts(promedio) # Imprime: 2.5



defmodule Matematica1 do
  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n - 1)
end

IO.puts(Matematica1.factorial(5)) # Imprime: 120

defmodule Matematica2 do
  def factorial(n), do: factorial(n, 1)

  defp factorial(0, acumulador), do: acumulador
  defp factorial(n, acumulador), do: factorial(n - 1, n * acumulador)
end

IO.puts(Matematica2.factorial(5)) # Imprime: 120



# Map-Reduce
# Elevar al cuadrado cada número y luego sumar
[1, 2, 3, 4]
|> Enum.map(&(&1 * &1))
|> Enum.sum()
|> IO.puts() # Imprime: 30 (1² + 2² + 3² + 4²)

# Combinar una lista de cadenas en una sola cadena
resultado = Enum.reduce(["Hola", "Elixir", "Mundo"], fn palabra, acumulador ->
  acumulador <> " " <> palabra
end)

IO.puts(String.trim(resultado)) # Imprime: Hola Elixir Mundo






defmodule Verificador do
  def validar_entrada(nombre, edad) do
    with true <- String.length(nombre) > 0,
         true <- edad >= 18 do
      "Entrada válida"
    else
      _ -> "Entrada inválida"
    end
  end
end

IO.puts(Verificador.validar_entrada("Pedro", 20)) # Imprime: Entrada válida




# Función pura
defmodule Funcion do
  def sumar(a, b), do: a + b
end
# Transparencia referencial: sumar(2, 3) siempre es equivalente a 5
resultado = Funcion.sumar(2, 3) + Funcion.sumar(2, 3)
IO.puts(resultado) # Imprime: 10
