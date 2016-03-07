delta(A, B, C, Delata) :-
  Delata is B * B - 4 * A * C.

get_qe_roots(A, B, C, Root1, Root2) :-
  delta(A, B, C, Delta),
  delta_less_than_zero_msg(Delta),
  Delta >= 0,
  Root1 is (-B + sqrt(Delta)) / (2 * A),
  Root2 is (-B - sqrt(Delta)) / (2 * A).

delta_less_than_zero_msg(Delta) :-
  Delta < 0,
  write('Delta is less than zero!').

delta_less_than_zero_msg(Delta) :-
  \+ Delta < 0.   % it can't end with ", fail.", because
                  % then the get_qe_roots will end before
                  % computing roots.

% getting quadrating equation roots written
% with only two predicates.
get_qe_roots(A, B, C, Root) :-
  delta(A, B, C, Delta),
  \+ Delta < 0,
  Root is (-B + sqrt(Delta)) / (2 * A).

get_qe_roots(A, B, C, Root) :-
  delta(A, B, C, Delta),
  \+ Delta = 0,
  Root is (-B - sqrt(Delta)) / (2 * A).
