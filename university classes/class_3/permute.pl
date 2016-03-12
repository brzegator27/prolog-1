% permutes list
permute([], []).
permute([XH | XT], PermutedList) :-
  permute(XT, XTPerm),
  insert_one(XH, XTPerm, PermutedList).
