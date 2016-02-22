factorial(0,1).
factorial(Number,Result) :-
	Number > 0,
	NewNumber is  Number-1,
	factorial(NewNumber,NewResult),
	Result  is  Number*NewResult.

fib(0,0).
fib(1,1).
fib(Number, Result) :-
	Number > 1,
	NewNumber1 is Number - 1,
	NewNumber2 is Number - 2,
	fib(NewNumber1, NewResult1),
	fib(NewNumber2, NewResult2),
	Result is NewResult1 + NewResult2.