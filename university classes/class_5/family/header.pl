% File with loaders of all(save this) Prolog files from this
% directory with all predicates. Previous apporaches
% showed that, afer a while it is hard to remember
% what each predicate is doing, and in which file it is
% placed, thus now each predicate and they tests are
% in one file.

% underscore character at the end of predicate's name
% denote the implementation's version's number
% because we can sometimes do one thing in different ways

% I advise snake case for names of variables

% Each file has the name of predicate which is interface
% predicate. What I mean is that, You can put in Prolog
% file predicates different than the name of a file as far
% as You have in this file other predicate(interface-predicate)
% with the name of file and the predicates with different
% names are "sub-predicates" for the interface-predicate
% and only interface-predicate needs them.

:- [birthdate].
:- [child].
:- [earnings].
:- [fake_database].
:- [husband].
:- [person_exists].
:- [queries].
:- [salary].
:- [wife].
