% we have map:
%                     | Belarus
%                     |------------
%     Poland          |
% --------------------|
%           |         | Ukraine
% Czech Rep.| Slovakia|-----------
% --------------------

colour(red).
colour(green).
colour(blue).

colour_map(Poland, Belarus, Ukraine, Slovakia, CzechRep) :-
  colour(Poland),       % colours must come first!
  colour(Belarus),
  colour(Ukraine),
  colour(Slovakia),
  colour(CzechRep),
  Poland \= Belarus,    % then we should state other conditions
  Poland \= Ukraine,
  Poland \= CzechRep,
  Poland \= Slovakia,
  Belarus \= Ukraine,
  Ukraine \= Slovakia,
  Slovakia \= CzechRep.
