% В данном задании необходимо определить указанные предикаты:
% and(A,B)
% or(A, B)
% xor(A, B)
% not(A)
% equ(A,B)
% Затем реализовать предикат для построения таблицы истинности truth_table(A,B, expression).
% Привести выводы таблиц истинности для разных выражений.

bool(true).
bool(false).

not(A) :- \+ A.

and(A, B) :- A, B.

or(A, B) :- not(and(not(A),	not(B))).

xor(A, B) :- or(and(A, not(B)), and(not(A), B)).

equ(A, B) :- not(xor(A, B)).

eval(Expression, true) :- Expression, !.
eval(Expression, false) :- not(Expression), !.

truth_table(A, B, Expression) :-
	bool(A), 
	bool(B),
	eval(Expression, Res),
	write(A), 
	write('\t'), 
	write(B), 
	write('\t'),
	write(Res),
	nl, fail.

% Таблица истинности: truth_table(A, B, not(xor(A, B)))
% Результат:
% true	true	true
% true	false	false
% false	true	false
% false	false	true
% false.

% Таблица истинности: truth_table(A, B, xor(or(A, B), and(A, B)))
% Результат:
% true	true	false
% true	false	true
% false	true	true
% false	false	false
% false.
