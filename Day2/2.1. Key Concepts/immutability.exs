# Definir una lista
lista = [1, 2, 3]

# "Modificar" la lista (en realidad se crea una nueva)
nueva_lista = lista ++ [4]

# Imprimir ambas listas
IO.inspect(lista)       # Imprime: [1, 2, 3]
IO.inspect(nueva_lista) # Imprime: [1, 2, 3, 4]
