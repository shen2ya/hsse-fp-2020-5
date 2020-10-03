% определить предикаты:
	% and(A,B)
	% or(A, B)
	% xor(A, B)
	% not(A)
	% equ(A,B)

% ипользовать предикат truth_table(A,B, expression) для построения таблиц истинности, например:
% truth_table(A,B,and(A,or(A,B))).
% true true true
% true fail true
% fail true fail
% fail fail fail

        and(A,B):- A,B.
        or(A,B):- A;B.
        not(A):- \+A.
        xor(A,B):- or(A,B), not(and(A,B)).
        equ(A,B):- not(xor(A,B)).

        bool(true).
        bool(fail).

        evaluate(E,true):- E, !.
        evaluate(_,fail).

        truth_table(A,B,E) :- bool(A), bool(B),
        write(A), write('\t'), write(B), write('\t'),
        evaluate(E,R), write(R), nl, fail.


%?- truth_table(A,B,and(A,or(A,B))).
%true    true    true
%true    fail    true
%fail    true    fail
%fail    fail    fail
%false.

%?- truth_table(A,B,and(A,xor(A,B))).
%true    true    fail
%true    fail    true
%fail    true    fail
%fail    fail    fail
%false.

%?- truth_table(A,B,equ(A,B)).
%true    true    true
%true    fail    fail
%fail    true    fail
%fail    fail    true
%false.

%?- truth_table(A,B,or(A,B)).
%true    true    true
%true    fail    true
%fail    true    true
%fail    fail    fail
%false.


