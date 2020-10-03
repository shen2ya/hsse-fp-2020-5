% есть набор фактов вида father(person1, person2) (person1 is the father of person2)
% Необходимо определить набор предикатов:
% 1. brother(X,Y)    -  определяющий являются ли аргументы братьями
% 2. cousin(X,Y)     -  определяющий являются ли аргументы двоюродными братьями
% 3. grandson(X,Y)   -  определяющий является ли аргумент Х внуком аргумента Y
% 4. descendent(X,Y) -  определяющий является ли аргумент X потомком аргумента Y
% 5. используя в качестве исходных данных следующий граф отношений
	father(a,b).  % 1
	father(a,c).  % 2
	father(b,d).  % 3
	father(b,e).  % 4
	father(c,f).  % 5

        brother(X,Y):-father(Z,Y),father(Z,X), X\=Y.
        cousin(X,Y):-father(I,J),father(I,Z),father(J,X),father(Z,Y),J\=Z,X\=Y.
        grandson(X,Y):-father(X,Z),father(Z,Y).
        descendant(X,Y):-father(Y,X).
        descendant(X,Y):-father(Z,X),descendant(Z,Y).


% указать в каком порядке и какие ответы генерируются вашими методами

%       ?- brother(X,Y).
%       X = conny,
%       Y = benny ;
%       X = benny,
%       Y = conny ;
%       X = ethan,
%       Y = david ;
%       X = david,
%       Y = ethan ;
%       false.

%       ?- cousin(X,Y).
%       X = david,
%       Y = fred ;
%       X = ethan,
%       Y = fred ;
%       X = fred,
%       Y = david ;
%       X = fred,
%       Y = ethan ;
%       false.

%       ?- grandson(X,Y).
%       X = alan,
%       Y = david ;
%       X = alan,
%       Y = ethan ;
%       X = alan,
%       Y = fred ;
%       false.

%       ?- descedant(X,Y).
%       X = benny,
%       Y = alan ;
%       X = conny,
%       Y = alan ;
%       X = david,
%       Y = benny ;
%       X = ethan,
%       Y = benny ;
%       X = fred,
%       Y = conny ;
%       X = david,
%       Y = alan ;
%       X = ethan,
%       Y = alan ;
%       X = fred,
%       Y = alan ;
%       false.
