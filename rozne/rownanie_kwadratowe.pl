delta(A,B,C,Wynik) :- 
	Wynik is B * B - 4 * A * C.
						
kwadrat(A,B,C,Wynik) :- 
		delta(A,B,C,Delta),
		Wynik is (-B+sqrt(Delta))/2,
		write(Wynik);
		delta(A,B,C,Delta),
		Delta \== 0,
		Wynik is (-B-sqrt(Delta))/2,
		write(Wynik).