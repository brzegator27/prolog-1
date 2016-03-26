% A program that finds a path through a maze

solve_maze :-
  path([start], Solution),
  write(Solution).

path([finish | Rest_of_path], [finish | Rest_of_path]).
path([Current_location | Rest_of_path], Solution):-
	connected_to(Current_location, Next_location),
	\+ member(Next_location, Rest_of_path),
	path([Next_location, Current_location | Rest_of_path], Solution).

connected_to(Location_1, Location_2) :-
  connect(Location_1, Location_2).
connected_to(Location_1, Location_2) :-
  connect(Location_2, Location_1).

% Our maze, the same as in maze.jpg file, writen down
% as prolog predicates
connect(start, 2).
connect(finish, 32).
connect(1, 7).
connect(2, 3).
connect(2, 8).
connect(3, 4).
connect(3, 9).
connect(4, 10).
connect(5, 6).
connect(5, 11).
connect(7, 13).
connect(8, 9).
connect(10, 16).
connect(11, 17).
connect(12, 18).
connect(13, 14).
connect(14, 15).
connect(14, 20).
connect(15, 21).
connect(16, 22).
connect(17, 23).
connect(18, 24).
connect(19, 25).
connect(20, 26).
connect(21, 22).
connect(23, 29).
connect(24, 30).
connect(25, 31).
connect(26, 27).
connect(27, 28).
connect(28, 29).
connect(28, 34).
connect(30, 36).
connect(31, 32).
connect(32, 33).
connect(33, 34).
connect(34, 35).
connect(35, 36).
