arbeitet_viel(tom).
arbeitet_viel(tina) :- arbeitet_viel(tom).
fleissig(X) :- arbeitet_viel(X).

