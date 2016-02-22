rodzic(tomek,robert).
rodzic(kasia,robert).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert,magda).
rodzic(magda,jan).
 
kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).
 
mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(jan).

famme(kasia).
homme(krzys).
parent(kasia,krzys).

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).
 
ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).

dziadek(X,Y) :-
	mezczyzna(X),
	rodzic(Z,Y),
	rodzic(X,Z).

babcia(X,Y) :-
	kobieta(X),
	rodzic(Z,Y),
	rodzic(X,Z).

brat(X,Y) :-
	mezczyzna(X),
	rodzic(P,X),
	rodzic(P,Y),
	X \= Y.

przodek(X,Y) :-
	rodzic(X,Y).
 
przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).

potomek(X,Y) :-
	rodzic(Y,X).

potomek(X,Z) :-
	rodzic(Y,X),
	potomek(Y,Z).
