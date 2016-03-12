% writes text which is list of letters
my_write([]).
my_write([XH | XT]) :-
  put(XH),
  my_write(XT).
