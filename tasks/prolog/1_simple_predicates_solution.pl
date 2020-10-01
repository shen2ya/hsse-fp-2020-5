father(a,b).
father(a,c).
father(b,d).
father(b,e).
father(c,f).
brother(X,Y):-
    father(Name1,X),
    father(Name2,Y),
    Name1 = Name2,
    X \= Y.
cousin(X,Y):-
    father(Name1,X),
    father(Name2,Y),
    brother(Name1,Name2).
grandson(X,Y):-
    father(Father_son,X),
    father(Y,Father_son).
descedent(X,Y):-
    father(Y,X)|grandson(X,Y).
/* ?- brother(X,Y).
X = b,
Y = c ;
X = c,
Y = b ;
X = d,
Y = e ;
X = e,
Y = d ;
false.

?- cousin(X,Y).
X = d,
Y = f ;
X = e,
Y = f ;
X = f,
Y = d ;
X = f,
Y = e ;
false.

?- grandson(X,Y).
X = d,
Y = a ;
X = e,
Y = a ;
X = f,
Y = a.

?- descedent(X,Y).
X = b,
Y = a ;
X = c,
Y = a ;
X = d,
Y = b ;
X = e,
Y = b ;
X = f,
Y = c ;
X = d,
Y = a ;
X = e,
Y = a ;
X = f,
Y = a. */












