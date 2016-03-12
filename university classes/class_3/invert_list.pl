% inverts the list
invert_list([], []).
invert_list([XH | XT], Merged) :-
  invert_list(XT, XTInverted),
  merge_two_arr(XTInverted, [XH], Merged).
