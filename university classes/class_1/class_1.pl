rodzic(kasia,robert).
rodzic(tomek,robert).
rodzic(tomek,eliza).
rodzic(robert,anna).
rodzic(robert_2,anna).
rodzic(robert,magda).
rodzic(magda,jan).

kobieta(kasia).
kobieta(eliza).
kobieta(magda).
kobieta(anna).

mezczyzna(tomek).
mezczyzna(robert).
mezczyzna(robert_2).
mezczyzna(jan).

% Opisanie zaleznosci rodzinnych:

matka(X,Y) :-
	rodzic(X,Y),
	kobieta(X).

ojciec(X,Y) :-
	rodzic(X,Y),
	mezczyzna(X).

% Dalsze zaleznosci rodzinne:

brat(X,Y) :-
	rodzic(R,X),
	rodzic(R,Y),
	mezczyzna(X),
	X \= Y.

siostra(X,Y) :-
	rodzic(R,X),
	rodzic(R,Y),
	kobieta(X),
	X \= Y.

dziadek(X,Y) :-
	mezczyzna(X),
	rodzic(X,Z),
	rodzic(Z,Y).

babcia(X,Y) :-
	kobieta(X),
	rodzic(X,Z),
	rodzic(Z,Y).



% Dalsze zaleznosci rodzinne

przodek(X,Y) :-
	rodzic(X,Y).

przodek(X,Z) :-
	rodzic(X,Y),
	przodek(Y,Z).


potomek(X,Y) :-
	rodzic(Y,X).

potomek(Z,X) :-
	rodzic(Y,Z),
	potomek(Y,X).
