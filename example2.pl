parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
grandparent(X,Z) :- parent(X,Y),parent(Y,Z).
female(pam).
female(pat).
female(liz).
female(ann).
male(bob).
male(tom).
male(jim).
father(X,Y) :- parent(X,Y),male(X).
mother(X,Y) :- parent(X,Y),female(X).
sister(X,Y) :- parent(Z,X),parent(Z,Y),female(X),X\=Y.
brother(X,Y) :- parent(Z,X),parent(Z,Y),male(X),X\=Y.
verh(liz,peter).
married(X,Y) :- verh(X,Y).
married(X,Y) :- verh(Y,X).
uncle(X,Y) :- brother(X,Z), parent(Z,Y).
uncle(X,Y) :- married(X,Z), sister(Z,V),parent(V,Y).
aunt(X,Y) :- sister(X,Z), parent(Z,Y).
aunt(X,Y) :- married(X,Z), brother(Z,V),parent(V,Y).
/* descendent(X,Y) - X is descendent of Y */
descendent(X,Y) :- parent(Y,X).
descendent(X,Y) :- parent(Y,Z),descendent(X,Z).

