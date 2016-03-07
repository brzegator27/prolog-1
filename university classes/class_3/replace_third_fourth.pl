replace_third_fourth([A, B, C, D | Rest], NewList) :-
  NewList = [A, B, D, C | Rest].
