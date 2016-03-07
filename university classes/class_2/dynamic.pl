:- write('I can run this operation
  automatically when loading file').

% we inform Prolog that these predicates may change
% during execution
:-
  dynamic(a/1),
  dynamic(b/2).

a(1).
a(2).

add_rule :-
  assert(
    (b(X, Y) :- a(X), a(Y))
  ).

delete_rule :-
  retract(
    (b(_, _) :- _)
  ).

delete_all_rules :-
  delete_rule,
  fail.

start :-
  add_rule,
  b(X, Y),
  write(X),
  write(' '),
  write(Y),
  nl, fail.

start.  % what does it do or change?

look_at_this_exclamation_mark :-
  write('Deleting all b predicates...'), nl,
  \+ delete_all_rules,
  write('... deleted'), nl,
  write('list b rules:'), nl,
  listing(b),
  write('call start'), nl,
  start,
  write('list b rules:'), nl,
  listing(b),
  write('call start'), nl,
  start,
  write('list b rules:'), nl,
  listing(b).
