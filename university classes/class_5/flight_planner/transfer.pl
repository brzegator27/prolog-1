% Copyright by Ivan Bratko
% Figure 4.5  A flight route planner and an example flight timetable.

transfer(Hours1 : Mins1, Hours2 : Mins2) :-
   60 * (Hours2 - Hours1) + Mins2 - Mins1 >= 40.
