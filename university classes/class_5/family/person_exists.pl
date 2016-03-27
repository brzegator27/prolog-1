% checks if person exists
person_exists(Person) :-
  husband(Person)
  ;
  wife(Person)
  ;
  child(Person).
