% Facts 

% Male
male(saleh).
male(abdalaziz).
male(khalid).

% Famale
female(zozo).
female(shahed).
female(raghad).
female(rana).
female(sara).

% Parent relationships
parent(zozo, shahed).
parent(saleh, shahed).
parent(zozo, abdalaziz).
parent(saleh, abdalaziz).
parent(zozo, raghad).
parent(saleh, raghad).
parent(shahed, khalid).
parent(abdalaziz, rana).
parent(abdalaziz, sara).

%Rules
father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :-female(X), parent(X,Y).
sister(X, Y) :- female(X),parent(P, X), parent(P, Y),X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y),X \= Y.
