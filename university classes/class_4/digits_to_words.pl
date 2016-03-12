means(0, zero).
means(1, one).
means(2, two).
means(3, three).
means(4, four).
means(5, five).
means(6, six).
means(7, seven).
means(8, eight).
means(9, nine).

% translates digits in list to words in list
digits_to_words([], []).
digits_to_words([XH | XT], [XHWord | XTWords]) :-
  means(XH, XHWord),
  digits_to_words(XT, XTWords).

digits_to_words_test :-
  digits_to_words([], []),
  digits_to_words([1], [one]),
  digits_to_words([1, 2], [one, two]),
  digits_to_words([2, 3, 1], [two , three, one]).
