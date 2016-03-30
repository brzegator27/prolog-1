% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

% route( Place1, Place2, Day, Route):
%    Route is a sequence of flights on Day, starting at Place1, ending at Place2

% Direct flight
route( P1, P2, Day, [ P1 / P2 / Fnum / Deptime ] ) :-
  flight( P1, P2, Day, Fnum, Deptime, _).

% Indirect connection
route(P1, P2, Day, [(P1 / P3 / Fnum1 / Dep1) | RestRoute]) :-
  route(P3, P2, Day, RestRoute),
  flight(P1, P3, Day, Fnum1, Dep1, Arr1),
  deptime(RestRoute, Dep2),            % Departure time of Route
  transfer(Arr1, Dep2).                % Enough time for transfer
