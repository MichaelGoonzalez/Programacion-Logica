/* La ley dice que es un crimen para un Estadounidense vender armas a naciones
 hostiles. Corea del Sur, enemigo de Estados Unidos, tiene algunos misiles, y todos
 sus misiles les fueron vendidos por el Coronel West, quien es Estadounidense.
 Pruebe que el Col. West es un criminal. */

% HECHOS 
es_estadounidense(coronel_west).
nacion_hostil(corea_del_sur).
tiene_misiles(corea_del_sur).
vendio_armas(coronel_west, corea_del_sur).

% REGLA: Es un crimen que un estadounidense venda armas a una nación hostil
criminal(Persona) :- 
    es_estadounidense(Persona), 
    vendio_armas(Persona, Nacion),
    nacion_hostil(Nacion).
