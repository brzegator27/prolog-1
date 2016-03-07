% insert one element somewhere in the list
insert_one(X, List, ListNew) :-
  delete_one(X, ListNew, List).
