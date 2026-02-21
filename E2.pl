%Enunciado: La ley dice que es un crimen para un Estadounidense vender armas a naciones
%hostiles. Corea del Sur, enemigo de Estados Unidos, tiene algunos misiles, y todos
%sus misiles les fueron vendidos por el Coronel West, quien es Estadounidense.
%Pruebe que el Col. West es un criminal.

%Hechos
nacion_hostil(corea_sur).
estadounidense(west).
arma(misiles).
posee(corea_sur, misiles).
vende(west, misiles,corea_sur).


%Reglas
crimen(A):-estadounidense(A),arma(B), vende(A,B,C), nacion_hostil(C).

%Consulta
% ?-crimen(west).
% true.
