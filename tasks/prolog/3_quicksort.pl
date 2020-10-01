% Определить предикат qsort(L, K) который для заданного списка целых чисел возвращает отсортированный

qsort([], []).
qsort([H|T], K) :-
    partition(H, T, L, R),
    qsort(L, Kl),
    qsort(R, Kr),
    append(Kl, [H|Kr], K).

partition(_, [], [], []).
partition(P, [H|T], [H|L], R) :-
    H =< P, partition(P, T, L, R).
partition(P, [H|T], L, [H|R]) :-
    H > P, partition(P, T, L, R).

