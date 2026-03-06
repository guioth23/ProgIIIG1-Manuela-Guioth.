arista(vancouver, edmonton, 16).
arista(vancouver, calgary, 13).
arista(calgary, edmonton, 4).
arista(edmonton, saskatoon, 12).
arista(saskatoon, calgary, 9).
arista(calgary, regina, 14).
arista(regina, saskatoon, 7).
arista(saskatoon, winnipeg, 20).
arista(regina, winnipeg, 4).


conectado(A,B,C):- arista(A,B,C) ; arista(B,A,C).

tiene_arista(Nodo):-arista(Nodo,_,_); arista(_, Nodo,_).

costo_via(X,Y,Z, CostoTotal):- arista(X,Y,C1), arista(Y,Z,C2), CostoTotal is C1+C2.

conectado(A,B):-arista(A,B,_);(arista(A,C,_), conectado(C,B)).