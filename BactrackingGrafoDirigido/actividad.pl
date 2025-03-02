% Representación del problema de los Puentes de Königsberg
% Definimos los puentes como conexiones entre tierras (nodos)
conecta(a, b).
conecta(a, c).
conecta(a, d).
conecta(b, a).
conecta(b, c).
conecta(c, a).
conecta(c, b).
conecta(c, d).
conecta(d, a).
conecta(d, c).

% Reglas para recorrer los puentes
camino(X, Y, Visitados) :-
    conecta(X, Z),
    \+ member(Z, Visitados), % Evita repetir caminos
    (Z = Y; camino(Z, Y, [Z|Visitados])).
%-----------------------------------

% Representación de un grafo dirigido con costos
arista(saskatoon, vancouver, 800).
arista(regina, winnipeg, 500).
arista(regina, saskatoon, 300).
arista(vancouver, calgary, 600).

% Regla para verificar conexiones
tiene_aristas(Nodo) :-
    arista(Nodo, _, _).

% Regla para obtener el costo entre nodos
costo(X, Z, Costo) :-
    arista(X, Z, Costo).
costo(X, Z, Costo) :-
    arista(X, Y, C1),
    costo(Y, Z, C2),
    Costo is C1 + C2.

% Verificar si se puede viajar entre dos ciudades
puede_viajar(X, Y) :-
    arista(X, Y, _).
puede_viajar(X, Y) :-
    arista(X, Z, _),
    puede_viajar(Z, Y).
