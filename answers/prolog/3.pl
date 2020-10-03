% Определить предикат qsort(L, K) который для заданного списка целых чисел возвращает отсортированный

split(X,[],[],[]).
split(X,[Y|Tail],[Y|Less],Greater):- X>Y, split(X,Tail,Less,Greater).
split(X,[Y|Tail],Less,[Y|Greater]):- split(X,Tail,Less,Greater).

qsort([],[]).
qsort([L|Tail],K) :-
    split(L,Tail,Less,Greater),
    qsort(Less,KLess),
    qsort(Greater,KGreater),
    append(KLess,[L|KGreater],K).

%?- qsort([56,-5,4,1,41,54,1],X).
%X = [-5, 1, 1, 4, 41, 54, 56] .

%?- qsort([12,1,5],X).
%X = [1, 5, 12] .
