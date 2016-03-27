% some queries based on predicates form this module

queries_all_people(Person) :-
  person_exists(Person).

queries_all_children(Ch) :-
  child(Ch).

queries_all_salaries(Sal) :-
  person_exists(Person),
  salary(Person, Sal).

queries_children_from_1979(Child) :-
  child(Child),
  birthdate(Child, date(_, _, 1979)).

queries_all_working_wifes(Wife) :-
  wife(Wife),
  person(_, _, _, working(_, _)) = Wife.

queries_all_before_1950_salary_less_than_3000(Person) :-
  person_exists(Person),
  birthdate(Person, date(_, _, Birthdate_year)),
  salary(Person, Salary),
  Birthdate_year < 1950,
  Salary < 3000.

queries_earnings_sum(Sum) :-
  bagof(Person, person_exists(Person), People_list),
  earnings(People_list, Sum).
