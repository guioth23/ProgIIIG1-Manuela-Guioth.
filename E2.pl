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
