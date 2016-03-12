% permutes list
permute_([], []).
permute_(X, [Chosen | XShorterPermuted]) :-
  delete_one(Chosen, X, XShorter),
  permute_(XShorter, XShorterPermuted).
