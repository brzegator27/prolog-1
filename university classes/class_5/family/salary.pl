% gets person salary
salary(person(_, _, _, working(_, S)), S).
salary(person(_, _, _, benefit), 500).
salary(person(_, _, _, unemployed), 0).
