progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).
progenitor(tomas, maria).

hombre(jose).
hombre(tomas).
hombre(jaime).

mujer(clara).
mujer(isabel).
mujer(ana).
mujer(patricia).

dif(X,Y):- X\=Y.

es_madre(X):- mujer(X), progenitor(X, _).
es_padre(X):- hombre(X), progenitor(X, _).
es_hijo(X):- hombre(X), progenitor(_, X).
abuelo_de(X,Y):- progenitor(Z,Y), progenitor(X,Z), hombre(X).
abuela_de(X,Y):- progenitor(Z,Y), progenitor(X,Z), mujer(X).
hermanos(X,Y):- dif(X,Y),progenitor(Z,X),progenitor(Z,Y).
tia(X,Y):- progenitor(Z,Y), progenitor(A,Z), progenitor(A,X), mujer(X).

predecesor(X,Y):- progenitor(X,Y).
predecesor(X,Y):- progenitor(X,Z), predecesor(Z,Y).

predecesor_2(X,Z):- progenitor(X,Z).
predecesor_2(X,Z):- progenitor(Y,Z), predecesor(X,Y).

sucesor(X,Y):- progenitor(Y,X).
sucesor(X,Y):- progenitor(Y,Z), sucesor(X,Z).

f(1,uno).
f(s(1),dos).
f(s(s(1)),tres).
f(s(s(s(X))),N):- f(X,N).

hermana_de(X,Y):- progenitor(Z, Y), progenitor(Z, X), mujer(X).

% tia(X,Y):- progenitor(Z, Y), hermana_de(X, Z).

miembro(X, [X | _]).
miembro(X, [_ | R]):- miembro(X,R).

concatenar([], L, L).
concatenar([X | L1], L2, [X | L3]):- concatenar(L1, L2, L3).

borrar(_, [], []).
borrar(E, [E | L1], L2):- borrar(E, L1, L2).
borrar(E, [X | L1], [X | L2]):- E\=X, borrar(E, L1, L2).

agregar([], E, [E]).
agregar([X | L1], E, [X | L2]):- agregar(L1, E, L2).

inversa(L1, X):- inversa(L1, [], X).
inversa([], L, L).
inversa([X | L1], L2, L3):- inversa(L1, [X | L2], L3).

% palindromo([]).
% palindromo(L1):- inversa(L1, [X | L2]), palindromo([X | L2]).
