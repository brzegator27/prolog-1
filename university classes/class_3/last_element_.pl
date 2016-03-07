% gets last element of the list
last_element_([X | []], X).
last_element_([_ | ListTail], El) :-
  last_element_2(ListTail, El).
