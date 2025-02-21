# Prolog es un lenguaje basado en lógica donde defines relaciones mediante hechos y reglas.

# 1. Definir los hechos (relaciones directas)
###Cada relación directa (padre, madre) se define como un hecho

# Padres de Homero
padre(abraham, homero).
madre(mona, homero).

# Padre de Herbert
padre(abraham, herbert).

# Padres de Marge, Patty y Selma
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).
madre(jacqueline, marge).
madre(jacqueline, patty).
madre(jacqueline, selma).

# Hijos de Homero y Marge
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).

# Hija de Selma
madre(selma, ling).

#2. Reglas para las relaciones indirectas 
# una conuslta indirecta seria el padre del progenitor

# X es abuelo de Y si X es padre de Z y Z es padre o madre de Y 
# X es abuela de Y si X es madre de Z y Z es padre o madre de Y 
abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).

# Ej. Consulta
# abuelo(abraham,bart)