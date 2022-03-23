% Taller de prolog por Ignacio Grane

% Ej 1
progenitor(clara,jose).
progenitor(tomas,jose).
progenitor(jose,ana).
progenitor(tomas,isabel).
progenitor(jose,patricia).
progenitor(patricia,jaime).

% Ej 2
% Para obtener los abuelos se pregunta como: progenitor(X,Y), progenitor(Y,jaime).
% Para obtener los abuelos se pregunta como: progenitor(X,Y), progenitor(Y,Z), progenitor(Z,jaime).
% Siendo X los abuelos o bisabuelos de jaime, segun sea el caso.

% Ej 3
es_valioso(oro).
es_mujer(ana).
tiene_oro(juan).
padre(juan,maria).
presta(juan,libro,maria).
presta(juan,lapiz,pedro).
presta(pedro,borrador,juan).

% Ej 4
varon(albert).
varon(edward).
mujer(alice).
mujer(victoria).
padres(edward,victoria,albert).
padres(alice,victoria,albert).
hermana_de(X,Y):- mujer(X), varon(Y), padres(X, A, B), padres(Y, A, B).

% Ej 5
miembro(X,[X|_]).
miembro(X,[_|R]):-miembro(X,R).

% Ej 6
inversa(L1,L):- inversa(L1,[],L).
inversa([],L,L).
inversa([X|L1],L2,L3):- inversa(L1,[X|L2],L3).

% Ej 7
longitud([],0).
longitud([_|Resto],N):-
longitud(Resto,N1),
N is N1+1.

% Ej 8
evento([2020],'Inicia una pandemia mundial').
evento([2021],'Messi gana su primer copa a nivel de seleccion').
evento([2022],'Se celebra el mundial de futbol en Qatar').

fechaEvento():-
	write('Digite la fecha: '),
	readln(Entrada),
	evento(Entrada,X),
	write(X).




