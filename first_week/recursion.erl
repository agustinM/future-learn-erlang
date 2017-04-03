-module (recursion).
-export ([tail_fib/1, fib/1, pieces/1, cake_pieces/1]).

fib (0) ->
    0;
fib(1) ->
    1;
fib (N) when N>1 ->
    fib(N-1) + fib(N-2).

tail_fib(N) ->
    tail_fib(N, 1, 0).

tail_fib(0, _PAST1, _PAST2) ->
    0;
tail_fib(1, PAST1, _PAST2) ->
    PAST1;
tail_fib(N, PAST1, PAST2) ->
    tail_fib(N-1, PAST1+PAST2, PAST1).

% Central Polygonal Numbers implementation. 'N' is the number of cuts.
pieces (0) ->
    1;
pieces (N) when N>0 ->
    pieces(N-1)+N.

% Cake numbers implementation: maximal number of pieces resulting from
% N planar cuts through a cube (or cake): C(N+1,3)+N+1.
cake_pieces (0) ->
    1;
cake_pieces (N) when N>0 ->
    cake_pieces(N-1) + pieces(N-1).
