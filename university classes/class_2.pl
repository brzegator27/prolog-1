write_something :-
  write('Kuba have '),
  write('cat'),
  nl,
  write('which is batcat!').

run_go :-
  [class_2_interactive],
  go.

list_all_woman :-
  [class_2_family],
  kobieta(K),
  write(K),
  write(' is woman.'),
  nl, fail.

list_one_capital :-
  [class_2_capitals],
  capital_of(A, B),
  write(B),
  write(' is capital of '),
  write(A),
  nl.

list_all_capitals :-
  [class_2_capitals],
  capital_of(A, B),
  write(B),
  write(' is capital of '),
  write(A),
  nl, fail.

add_new_woman :-
  [class_2_family],
  listing(kobieta),
  assert(kobieta(kopernik)),  % Adds term kobieta(kopernik)
  listing(kobieta).
