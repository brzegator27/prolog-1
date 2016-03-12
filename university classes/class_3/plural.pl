% makes plural form of english noun
plural(Noun, PluralNoun) :-
  name(Noun, NounAsList),
  name('s', SCodeInList),
  append(NounAsList, SCodeInList, PluralNounAsList),
  name(PluralNoun, PluralNounAsList).
