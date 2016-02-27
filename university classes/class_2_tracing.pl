test_trace_0 :-
  [class_2_family],
  write('Write \'h\' to see options. ;)'),
  trace,
  kobieta(kasia),
  rodzic(K,_),
  nodebug.

test_trace_1 :-
  [class_2_family],
  nodebug,
  trace(matka),
  matka(kasia, robert),
  trace(matka, -all),     % stop tracing matka
  nodebug.

test_trace_2 :-
  nodebug,
  [class_2_family],
  trace(przodek, -all),   % "-all" means "stop tracing anything"
  trace(przodek, +call),  % "+call" means "start tracing call"
                          % "-call" means "stop tracing call"
                          % and so on...
  przodek(tomek, jan),
  nodebug,
  fail.
