determinante([el|S],S).
determinante([la|S],S).

nombre([hombre|S],S).
nombre([manzana|S],S).

verbo([come|S],S).

conc([],L,L).
conc([X|L1],L2,[X|L3]):- conc(L1,L2,L3).

oracion(S0,S):- sintagma_nominal(S0,S1), sintagma_verbal(S1,S).

sintagma_nominal(S0,S):- determinante(S0,S1), nombre(S1,S).

sintagma_verbal(S0,S):- verbo(S0,S1), sintagma_nominal(S1,S).

sintagma_verbal(S0,S):- verbo(S0,S).
