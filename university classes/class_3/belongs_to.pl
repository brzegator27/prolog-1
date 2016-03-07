belongs_to(X, [X | _]).
belongs_to(X, [_ | Tail]) :-
  belongs_to(X, Tail).
