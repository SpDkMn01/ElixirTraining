resultado = try do
  10 / 0
rescue
  ArithmeticError -> "No se puede dividir por cero"
end

IO.puts(resultado) # Imprime: No se puede dividir por cero


resultado = try do
  String.to_integer("abc") # Esto lanza una excepción
rescue
  _ -> "Error: no se puede convertir a entero"
end

IO.puts(resultado) # Imprime: Error: no se puede convertir a entero



resultado = try do
  String.to_integer("10a") # Esto lanza ArgumentError
rescue
  ArgumentError -> "Error Integer: formato inválido"
  ArithmeticError -> "Error Integer: operación matemática inválida"
end

IO.puts(resultado) # Imprime: Error: formato inválido


numero = "10a"

if String.match?(numero, ~r/^\d+$/) do
  IO.puts(String.to_integer(numero))
else
  IO.puts("Error String: formato inválido")
end
