present_list_unification :-
  X_1 = [a, b, c],
  write('X_1 = [a, b, c]: '), nl,
  write(X_1), nl, nl,   % we use indexes, because one variable
                        % in predicate, we can inicialize only once
  [X_2 | Y_2] = [a, b, c],
  write('[X_2 | Y_2] = [a, b, c]:'), nl,
  write(X_2), nl,
  write(Y_2), nl, nl,
  
  [[a, b], c] = [X_3 | Y_3],
  write('[[a, b], c] = [X_3 | Y_3]:'), nl,
  write(X_3), nl,
  write(Y_3), nl, nl,

  \+ [a(b), c(X_4)] = [Z_4 | c(a)],
  write('\\+ [a(b), c(X_4)] = [Z_4 | c(a)]:'), nl,
  write(X_4), nl,
  write(Z_4), nl, nl,

  [X_5 | Y_5] = [a],
  write('[X_5 | Y_5] = [a]:'), nl,
  write(X_5), nl,
  write(Y_5).
