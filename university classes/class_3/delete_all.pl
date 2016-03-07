% deletes all elements from the list
delete_all(_, [], []).
delete_all(X, [X | Tail], TailProcessed) :-
  delete_all(X, Tail, TailProcessed).
delete_all(X, [LHead | LTail], [LHead | LTailProcessed]) :-
  LHead \= X,
  delete_all(X, LTail, LTailProcessed).
