% array.pro
main :- 
    Arr = [1, 2, 3, 4, 5],
    write('Array elements are: '),
    print_elements(Arr).

print_elements([]).
print_elements([H|T]) :-
    write(H), write(' '),
    print_elements(T).
