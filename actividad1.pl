/* 1). De acuerdo a la siguiente imagen de árbol genealógico (LA FAMILIA SIMPSONS), construya una lógica de
 predicados donde las relaciones directas se generen por hechos y las relacion de
 mas de una generación se obtengan mediante reglas.Ejemplo: padre(homero,bart) el
 anterior es un hecho y corresponde a una relación directa, mientras que
 abuelo(X,bart) puede ser una consulta hecha al programa, donde la relación abuelo
 (que es de más de 1 generación) debe ser obtenida por reglas, no por hechos.*/

% Padres de Homero y Herbert
padre(abraham, homero).
padre(abraham, herbert).

% Padres de Marge, Patty y Selma
padre(clancy, marge).
padre(clancy, patty).
padre(clancy, selma).

% Hijos de Homero y Marge
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).

% Madres
madre(mona, homero).
madre(jacqueline, marge).
madre(jacqueline, patty).
madre(jacqueline, selma).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

% Reglas para abuelo y abuela
abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
