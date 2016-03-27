% gets person earnings
earnings([], 0).
earnings([Person | Rest_people], Earnings) :-
  salary(Person, Salary),
  earnings(Rest_people, Rest_earnings),
  Earnings is Salary + Rest_earnings.
