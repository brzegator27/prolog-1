% test whether second list is subset of another list
subset_(_, []).
subset_([X | XT], [X | YT]) :-
  subset_(XT, YT).
subset_([_ | T], L) :-
  subset_(T, L).

subset__test :-
  subset_([], []),
  \+ subset_([], [a]),
  subset_([a, b, c], []),
  subset_([a, b, c], [a]),
  subset_([a, b, c], [a, b]),
  subset_([a, b, c], [a, b, c]),
  %??????? subset_([a, b, c], [a, c, d]),
  \+ subset_([a, b, c], [a, b, c, a]).
