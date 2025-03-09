# If
# edad = 10
edad = 18
if edad >= 18 do
  IO.puts("Eres mayor de edad.")
else
  IO.puts("Eres menor de edad.")
end

# En Elixir, cualquier valor distinto de false o nil
# se considera verdadero en una condición.
if 0 do
  IO.puts("Esto es verdadero.")
end




# unless
# edad = 10
edad = 18
if edad >= 18 do
  IO.puts("No eres menor de edad.")
else
  IO.puts("No eres mayor de edad.")
end




# case
# animal = "perro"
animal = "gato"
case animal do
  "gato" -> IO.puts("Es un gato.")
  "perro" -> IO.puts("Es un perro.")
  _ -> IO.puts("No sabemos qué animal es.")
end

# edad = 25
edad = "hola"
case edad do
  x when x < 18 -> IO.puts("Eres menor de edad.")
  x when x >= 18 and x < 65 -> IO.puts("Eres adulto.")
  _ -> IO.puts("Eres mayor.")
end




# cond
hora = 14

cond do
  hora < 12 -> IO.puts("Buenos días.")
  hora >= 12 and hora < 18 -> IO.puts("Buenas tardes.")
  true -> IO.puts("Buenas noches.")
end




# with
# Verificar una cadena de condiciones
verificar_usuario = fn nombre, edad ->
  with true <- String.length(nombre) > 0,
       true <- edad >= 18 do
    "Acceso concedido"
  else
    _ -> "Acceso denegado"
  end
end

IO.puts(verificar_usuario.("Pedro", 20))  # Imprime: Acceso concedido
IO.puts(verificar_usuario.("", 20))       # Imprime: Acceso denegado




# Try/catch
# Usamos `throw` para lanzar un valor explícitamente
resultado = try do
  throw(:custom_error)  # Lanza un valor
catch
  :custom_error -> "Se lanzó un error personalizado"
end
IO.puts(resultado)  # Imprime: Se lanzó un error personalizado

# Try/rescue
# Manejo de errores aritméticos
resultado = try do
  10 / 0
rescue
  ArithmeticError  -> "Ocurrió un error de ejecución"
end
IO.puts(resultado)  # Imprime: Ocurrió un error de ejecución




# Raise
# Función que lanza un error si la edad es menor a 18
defmodule Validacion do
  def verificar_edad(edad) when edad < 18 do
    raise "Edad inválida: Debes ser mayor de edad"
  end

  def verificar_edad(edad) do
    "Edad válida: #{edad}"
  end
end

# Llamar la función
IO.puts(Validacion.verificar_edad(20)) # Imprime: Edad válida: 20
# IO.puts(Validacion.verificar_edad(15)) # Lanza un error: Edad inválida




# Receive
# Función que espera mensajes
proceso = spawn(fn ->
  receive do
    :hola -> IO.puts("¡Hola, proceso!")
    :adios -> IO.puts("Adiós, proceso.")
  after 5000 ->
    IO.puts("No se recibió mensaje en 5 segundos.")
  end
end)

# Enviar mensajes al proceso
send(proceso, :hola)   # Imprime: ¡Hola, proceso!
send(proceso, :adios)  # Imprime: Adiós, proceso.




# Loop
# Recursión
# Función recursiva que cuenta hacia atrás desde un número dado
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

# Recursión con acumuladores
defmodule Matematica do
  def factorial(n), do: factorial(n, 1)

  defp factorial(0, acumulador), do: acumulador
  defp factorial(n, acumulador), do: factorial(n - 1, n * acumulador)
end

IO.puts(Matematica.factorial(5)) # Imprime: 120

# Loops con funciones como Enum
# Iterar sobre una lista
Enum.each([1, 2, 3, 4], fn x -> IO.puts("Número: #{x}") end)
# Elevar al cuadrado cada número
cuadrados = Enum.map([1, 2, 3, 4], fn x -> x * x end)
IO.inspect(cuadrados)
