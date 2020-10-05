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

bool(true).
bool(false).

not(A) :- \+ A.
and(A, B) :- A, B.
or(A, B) :- not(and(not(A),	not(B))).
xor(A, B) :- or(and(A, not(B)), and(not(A), B)).
equ(A, B) :- not(xor(A, B)).

evaluation(E, true) :- E, !.
evaluation(E, false) :- not(E), !.

truth_table(A, B, E) :-
	bool(A), bool(B),
	evaluation(E, Res),
	write(A), write(' '), write(B),
	write(Res),
	nl, fail.

% ТЕСТЫ
% Таблица истинности: truth_table(A, B, not(xor(A, B))) true	true	true true	false	false false	true false false	false	true false.

% Таблица истинности: truth_table(A, B, xor(or(A, B), and(A, B))) true	true	false true	false	true false	true	true false	false	false false.
