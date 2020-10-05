% Определить предикат qsort(L,  K) который для заданного списка целых чисел возвращает отсортированный

split(X, [],[],[]).
split(X, [Y|T], [Y|S], M) :- X > Y, split(X, T, S, M).
split(X, [Y|T], S, [Y|M]) :- split(X, T, S, M).

qsort([], []).
qsort([L|T], K) :- split(L, T, S, M),
	qsort(S, KS),
	qsort(M, KM),
	append(KS, [L|KM], K).

% ТЕСТЫ
%?- qsort([64, 0, 4, 2, 16, 3, 2], X).
%X = [0,  2,  2,  4,  16,  32,  64].

%?- qsort([76, 10, 128], X).
%X = [10,  76,  128].
