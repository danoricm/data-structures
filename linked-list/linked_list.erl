% linked_list.erl
-module(linked_list).
-export([main/0]).

main() ->
    Arr = [1, 2, 3, 4, 5],
    io:format("Array elements are: ~p~n", [Arr]).
