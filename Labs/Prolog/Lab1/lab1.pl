father(alex,bob).
father(alex,jack).
father(bob,don).
father(bob,elon).
father(jack,fedor).

brother(X,Y):-father(Z,Y),father(Z,X),dif(X,Y).
cousin(X,Y):-father(Z,E),father(Z,R),father(E,X),father(R,Y),dif(X,Y),dif(E,R).
grandson(X,Z):-father(Y,X),father(Z,Y).
descedent(X,Z):-father(Z,X).
descedent(X,Z):-father(Y,X),descedent(Y,Z).

/*
?- brother(X,Y).
X = jack,
Y = bob ;
X = bob,
Y = jack ;
X = elon,
Y = don ;
X = don,
Y = elon ;
false.

?- cousin(X,Y).
X = don,
Y = fedor ;
X = elon,
Y = fedor ;
X = fedor,
Y = don ;
X = fedor,
Y = elon ;
false

?- grandson(X,Y).
X = don,
Y = alex ;
X = elon,
Y = alex ;
X = fedor,
Y = alex.

?- descedent(X,Y).
X = bob,
Y = alex ;
X = jack,
Y = alex ;
X = don,
Y = bob ;
X = elon,
Y = bob ;
X = fedor,
Y = jack ;
X = don,
Y = alex ;
X = elon,
Y = alex ;
X = fedor,
Y = alex ;
false.
*/
