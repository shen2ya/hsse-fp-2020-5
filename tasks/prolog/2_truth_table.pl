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

not(A) :- \+ A.
and(A,B) :- A, B.
or(A,B) :- A ; B.
equ(A,B) :- or(and(A,B), and(not(A), not(B))).
xor(A,B) :- not(equ(A,B)).

table_value(true).
table_value(fail).

truth_table(A,B,E) :-
    table_value(A),
    table_value(B),
    write(A), write(' '), write(B), write(' '),
    (E -> write(true); write(fail)), nl,
    fail.

