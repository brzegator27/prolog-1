% source: http://cs.union.edu/~striegnk/learn-prolog-now/html/node35.html#sec.l4.rdal
% this predicate change list of 'a's to list of 'b's
% and vice versa
a2b([],[]).
a2b([a|Ta],[b|Tb]) :-
   a2b(Ta,Tb).
