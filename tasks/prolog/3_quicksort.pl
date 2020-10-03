% Определить предикат qsort(L, K) который для заданного списка целых чисел возвращает отсортированный

pivot(_, [], [], []).
pivot(Pivot, [L|Tail], [L|LessOrEqualThan], GreaterThan) :- Pivot >= L, pivot(Pivot, Tail, LessOrEqualThan, GreaterThan). 
pivot(Pivot, [L|Tail], LessOrEqualThan, [L|GreaterThan]) :- pivot(Pivot, Tail, LessOrEqualThan, GreaterThan).

qsort([], []).
qsort([L|Tail], K) :- pivot(L, Tail, List1, List2), qsort(List1, KList1), qsort(List2, KList2), append(KList1, [L|KList2], K).

% Результаты:
$ ?- qsort([3,2,0,1,-1], K).
% K = [-1, 0, 1, 2, 3] .
