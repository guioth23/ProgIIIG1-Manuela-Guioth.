%Hechos
padre(abraham,homero).
padre(abraham,herbert).

padre(clancy,marge).
padre(clancy,patty).
padre(clancy,selma).

padre(homero,bart).
padre(homero,maggie).
padre(homero,lisa).

madre(mona,homero).

madre(jacqueline,marge).
madre(jacqueline,patty).
madre(jacqueline,selma).

madre(selma,ling).

madre(marge,bart).
madre(marge,lisa).
madre(marge,maggie).

%Reglas
abuelo(X,Y) :- (padre(X,Z) ; madre(X,Z)), (padre(Z,Y) ; madre(Z,Y)).

hijo(X,Y) :- padre(Y,X).
hijo(X,Y) :- madre(Y,X).

hermano(X,Y) :- padre(P,X), padre(P,Y), X \= Y.

tio(X,Y) :- hermano(X,Z), padre(Z,Y).
tio(X,Y) :- hermano(X,Z), madre(Z,Y).

sobrino(X,Y):- tio(Y,X).

primo(X,Y) :- (padre(A,X) ; madre(A,X)), (padre(B,Y) ; madre(B,Y)), hermano(A,B), X \= Y.

%Consultas
% 1. Abuelo
% ?- abuelo(abraham,bart).
% true.

% ?- abuelo(clancy,lisa).
% true.

% ?- abuelo(X,bart).
% X = abraham
% X = clancy
% false.


% 2. Hijo
% ?- hijo(bart,homero).
% true.

% ?- hijo(lisa,marge).
% true.

% ?- hijo(X,marge).
% X = bart
% X = lisa
% X = maggie
% false.


% 3. Hermano
% ?- hermano(marge,selma).
% true.

% ?- hermano(bart,lisa).
% true.

% ?- hermano(X,patty).
% X = marge
% X = selma
% false.


% 4. Tío
% ?- tio(selma,bart).
% true.

% ?- tio(patty,lisa).
% true.

% ?- tio(X,ling).
% X = marge
% X = patty
% false.


% 5. Sobrino
% ?- sobrino(bart,selma).
% true.

% ?- sobrino(ling,marge).
% true.

% ?- sobrino(X,patty).
% X = bart
% X = lisa
% X = maggie
% false.


% 6. Primo
% ?- primo(ling,bart).
% true.

% ?- primo(bart,ling).
% true.

% ?- primo(X,bart).
% X = ling
% false.

% ?- primo(bart,lisa).
% false.