% some queries based on predicates form this module

% queries_all_people(Person) :-
%   person_exists(Person).

% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.
queries_three_cities(City1, City2, City3, FN1, FN2, FN3, FN4)  :-
  permutation([milan, ljubljana, zurich], [City1, City2, City3]),
  flight(london, City1, tu, FN1, _, _),
  flight(City1, City2, we, FN2, _, _),
  flight(City2, City3, th, FN3, _, _),
  flight(City3, london, fr, FN4, _, _).

queries_example_flight_after_20(Day, Leaving) :-
  flight(ljubljana, london, Day, _, Leaving : _, _),
  Leaving >= 20.

queries_example_route(Route) :-
  route(ljubljana, edinburgh, th, Route).
