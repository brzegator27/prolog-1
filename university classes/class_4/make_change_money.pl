% predicate for changing money
% it checks if we can change given amount
% of money to one of given conins

% definitions of conins:
coin(1).
coin(2).
coin(5).
coin(10).
coin(20).
coin(50).
coin(100).
coin(200).
coin(500).
coin(1000).
coin(2000).
coin(5000).
coin(10000).
coin(20000).

make_change_money(0, _, []).
make_change_money(Amount, Available_coins,
    [Chosen_coin | Other_chosen_coins]) :-

  Amount > 0,   % without this conditions we may have
                % interesting infinite predicate
  coins_are_available(Available_coins),
  belongs_to_(Chosen_coin, Available_coins),
  Amount_changed is Amount - Chosen_coin,

  make_change_money(Amount_changed,
                    Available_coins,
                    Other_chosen_coins).

make_change_money_test :-
  make_change_money(1, [1, 2], [1]),
  make_change_money(2, [1, 5, 10], [1, 1]),
  make_change_money(6, [1, 5], [1, 5]),
  make_change_money(6, [1, 5], [1, 1, 1, 1, 1, 1]),
  coins_are_available_test.


coins_are_available([]).
coins_are_available([Coin | Rest_of_coins]) :-
  coin(Coin),
  coins_are_available(Rest_of_coins).

coins_are_available_test :-
  coins_are_available([]),
  \+ coins_are_available(6),
  coins_are_available([1]),
  coins_are_available([5]),
  coins_are_available([1, 5]),
  \+ coins_are_available([1, 5, 6]).
