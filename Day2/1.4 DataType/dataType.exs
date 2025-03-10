# Definir una lista
mi_lista = [10, 20, 30, 40]

# Acceder al primer elemento (head) y al resto de la lista (tail)
[head | tail] = mi_lista
IO.puts("Cabeza: #{head}")   # Imprime: Cabeza: 10
IO.inspect(tail)

# Concatenación de listas
lista1 = [20, 10]
lista2 = [40, 30]
nueva_lista = lista1 ++ lista2
IO.inspect(nueva_lista) # Imprime: [20, 10, 40, 30]

# Eliminación de elementos
lista = [1, 2, 3, 4]
lista_sin_dos = lista -- [2]
IO.inspect(lista_sin_dos) # Imprime: [1, 3, 4]

# Verificar un elemento
lista = [1, 2, 3]
IO.puts(2 in lista) # Imprime: true

IO.puts("===============")
# ===============
# Definir una tupla
mi_tupla = {1, "dos", :tres}

# Acceder a elementos de la tupla
IO.puts(elem(mi_tupla, 1)) # Imprime: dos

# Actualizar una tupla (creando una nueva)
nueva_tupla = put_elem(mi_tupla, 2, "tres actualizado")
IO.inspect(nueva_tupla) # Imprime: {1, "dos", "tres actualizado"}

IO.puts("===============")
# ===============
# Definir un mapa
mi_mapa = %{nombre: "Pedro", edad: 33}

# Acceder a valores
IO.puts(mi_mapa[:nombre])   # Imprime: Pedro
IO.puts(mi_mapa.nombre)     # Imprime: Pedro (solo para claves tipo átomo)

# Actualizar valores
nuevo_mapa = %{mi_mapa | edad: 31}
IO.inspect(nuevo_mapa)      # Imprime: %{nombre: "Pedro", edad: 31}

# Agregar una nueva clave
mapa_actualizado = Map.put(nuevo_mapa, :ciudad, "Lima")
IO.inspect(mapa_actualizado) # Imprime: %{nombre: "Pedro", edad: 30, ciudad: "Lima"}

# Eliminar una clave
mapa_sin_nombre = Map.delete(mapa_actualizado, :nombre)
IO.inspect(mapa_sin_nombre) # Imprime: %{edad: 30}

# Obtener todas las claves o valores
IO.inspect(Map.keys(mapa_sin_nombre))   # Imprime: [:edad, :ciudad]
IO.inspect(Map.values(mapa_sin_nombre)) # Imprime: ["31", Lima]

IO.puts("===============")
# ===============
# Definir una cadena
mi_cadena = "Hola, Elixir!"

# Interpolación
nombre = "Pedro"
IO.puts("Hola, #{nombre}!") # Imprime: Hola, Pedro!

# Concatenación
saludo = "Hola" <> ", Elixir!"
IO.puts(saludo) # Imprime: Hola, Elixir!

# Longitud
IO.puts(String.length("Hola")) # Imprime: 4

# División
palabras = String.split("Elixir es genial", " ")
IO.inspect(palabras) # Imprime: ["Elixir", "es", "genial"]

# Reemplazo
nueva_cadena = String.replace("Hola, mundo", "mundo", "Elixir")
IO.puts(nueva_cadena) # Imprime: Hola, Elixir
